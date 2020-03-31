defmodule AncestryWeb do
  @moduledoc """
  The entrypoint for defining your web interface, such
  as controllers, views, channels and so on.

  This can be used in your application as:

      use AncestryWeb, :controller
      use AncestryWeb, :view

  The definitions below will be executed for every view,
  controller, etc, so keep them short and clean, focused
  on imports, uses and aliases.

  Do NOT define functions inside the quoted expressions
  below. Instead, define any helper function in modules
  and import those modules here.
  """

  def controller do
    quote do
      use Phoenix.Controller, namespace: AncestryWeb

      import Plug.Conn
      import AncestryWeb.Gettext
      import Phoenix.LiveView.Controller

      alias AncestryWeb.Router.Helpers, as: Routes
    end
  end

  def view(type \\ :view)

  def view(:live_view) do
    quote do
      use Phoenix.View,
        root: "lib/ancestry_web/live",
        pattern: "**/*",
        namespace: AncestryWeb

      # Import convenience functions from controllers
      #      import Phoenix.Controller, only: [get_flash: 1, get_flash: 2, view_module: 1]
      # import Phoenix.LiveView
      import Phoenix.LiveView.Helpers

      # Use all HTML functionality (forms, tags, etc)
      use Phoenix.HTML

      import AncestryWeb.ErrorHelpers
      import AncestryWeb.Gettext
      alias AncestryWeb.Router.Helpers, as: Routes
    end
  end

  def view(_) do
    quote do
      use Phoenix.View,
        root: "lib/ancestry_web/templates",
        namespace: AncestryWeb

      # Import convenience functions from controllers
      import Phoenix.Controller, only: [get_flash: 1, get_flash: 2, view_module: 1]

      # Use all HTML functionality (forms, tags, etc)
      use Phoenix.HTML

      import AncestryWeb.ErrorHelpers
      import AncestryWeb.Gettext
      alias AncestryWeb.Router.Helpers, as: Routes
    end
  end

  def router do
    quote do
      use Phoenix.Router
      import Plug.Conn
      import Phoenix.Controller
      import Phoenix.LiveView.Router
    end
  end

  def channel do
    quote do
      use Phoenix.Channel
      import AncestryWeb.Gettext
    end
  end

  @doc """
  When used, dispatch to the appropriate controller/view/etc.
  """
  defmacro __using__(which) when is_atom(which) do
    apply(__MODULE__, which, [])
  end

  defmacro __using__([{which, opts}]) when is_atom(which) do
    apply(__MODULE__, which, [opts])
  end
end
