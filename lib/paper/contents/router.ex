defmodule Paper.Content.Router do
  use PaperWeb, :router

  alias Paper.Content.{
    Controller
  }

  get("/", Controller, :index)
  post("/", Controller, :create)

end