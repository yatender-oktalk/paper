defmodule Paper.Content.Controller do
  use PaperWeb, :controller

  alias Paper.Content.{
    Model
  }

  def index(conn, params) do
    conn |> send_resp(Model.get_content(params))
  end

  def create(conn, _params) do
    conn |> send_resp(Model.create_content(conn))
  end


  defp send_resp(conn, res) do
    {status, response} =
      case res do
        {:ok, resp} ->
          {200, resp}
        {:error, resp} -> {400, resp}
      end

    conn
    |> put_resp_content_type("application/json")
    |> send_resp(status, Poison.encode!(%{resp: response}))
  end

end
