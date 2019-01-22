defmodule Paper.Content.Model do
  use PaperWeb, :model

  @primary_key {:id, :id, autogenerate: true}
  schema "messages" do
    field(:title, :string, required: true)
    field(:author, :string, required: true)
    field(:summary, :string, default: "")
    field(:content, :string, required: true)
    field(:status, :string, default: "published")
    field(:published_date, Timex.Ecto.DateTime, default: Timex.now())

    timestamps()
  end

  def hello() do
    :hello
  end
end