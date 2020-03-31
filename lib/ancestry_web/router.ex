defmodule AncestryWeb.Router do
  use AncestryWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_live_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  pipeline :root_layout do
    plug :put_root_layout, {AncestryWeb.LayoutView, "root.html"}
  end

  scope "/", AncestryWeb do
    pipe_through :browser

    get "/", PageController, :index
  end

  scope "/", AncestryWeb.Live do
    pipe_through [:browser, :root_layout]

    scope "/foo", alias: Foo do
      live "/", Index
    end
  end

  # Other scopes may use custom stacks.
  # scope "/api", AncestryWeb do
  #   pipe_through :api
  # end
end
