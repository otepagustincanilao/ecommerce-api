defmodule EcommerceWeb.Router do
  use EcommerceWeb, :router

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

  scope "/", EcommerceWeb do
    pipe_through :browser

    get "/", PageController, :index
  end

  # Other scopes may use custom stacks.
  scope "/api", EcommerceWeb do
    pipe_through :api

    scope "/v1", V1 do

      scope "/products" do
        post "/create", ProductController, :create
      end

      scope "/customers" do
        post "/create", CustomerController, :create
      end

      scope "/orders" do
        post "/create", OrderController, :create
      end

      scope "/categories" do
        post "/create", CategoriesController, :create
      end

    end
  end

  # Enables LiveDashboard only for development
  #
  # If you want to use the LiveDashboard in production, you should put
  # it behind authentication and allow only admins to access it.
  # If your application does not have an admins-only section yet,
  # you can use Plug.BasicAuth to set up some basic authentication
  # as long as you are also using SSL (which you should anyway).
  if Mix.env() in [:dev, :test] do
    import Phoenix.LiveDashboard.Router

    scope "/" do
      pipe_through :browser
      live_dashboard "/dashboard", metrics: EcommerceWeb.Telemetry
    end
  end
end
