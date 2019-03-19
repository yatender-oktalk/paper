defmodule PaperWeb.PageController do
  use PaperWeb, :controller

  def index(conn, params) do
    {:ok, contents} = Paper.Content.Model.calculate_sum(params)
    render conn, "index.html", contents: contents, num: params["num"]
  end
end
