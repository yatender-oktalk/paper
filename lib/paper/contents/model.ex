defmodule Paper.Content.Model do
  use Paper, :model

  @primary_key {:id, :id, autogenerate: true}
  schema "contents" do
    field(:title, :string, required: true)
    field(:author, :string, required: true)
    field(:summary, :string, default: "")
    field(:content, :string, required: true)
    field(:status, :string, default: "published")
    field(:published_date, Timex.Ecto.DateTime)

    timestamps()
  end

  #TODO
  def get_content(params) do
    {:ok, %Paper.Content.Model{}}
  end

  def create_content(conn) do
    param = conn.body_params
    param_map = case param["published_date"] in ["", nil] do
      true -> Map.put(param, "published_date", Timex.now())
      _ -> Map.put(param, "published_date", Timex.Ecto.DateTime.cast!(param["published_date"]))
    end

    changes = changeset(%__MODULE__{}, param_map)

    with true <- changes.valid?,
    {:ok, resp} <- Repo.insert(changes) do
      {:ok, %{id: resp.id}}
    else
      false -> {:error, "data incorrect :( please send data after checking"}
      {:error, _} -> {:error, "failed please try again"}
    end
  end

  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:title, :author, :summary, :content, :status, :published_date])
    |> validate_required([:title, :author, :content, :status, :published_date])
  end

end
