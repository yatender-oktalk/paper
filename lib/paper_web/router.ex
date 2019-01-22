defmodule PaperWeb.Router do
  use PaperWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", PaperWeb do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
  end

  scope "/api", Paper do
    pipe_through :api

    forward "/content", Content.Router
  end

  # Other scopes may use custom stacks.
  # scope "/api", PaperWeb do
  #   pipe_through :api
  # end
end
