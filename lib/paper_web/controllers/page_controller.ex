defmodule PaperWeb.PageController do
  use PaperWeb, :controller

  def index(conn, _params) do
    {:ok, contents} = Paper.Content.Model.get_content(%{limit: 10, offset: 0})
    render conn, "index.html", contents: contents
  end
end
