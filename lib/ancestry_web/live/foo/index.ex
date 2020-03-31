defmodule AncestryWeb.Live.Foo.Index do
  use Phoenix.LiveView
  # use Phoenix.LiveView, container: {:div, class: "h-full"}

  alias AncestryWeb.Router.Helpers, as: Routes
  alias AncestryWeb.FooView

  def render(assigns) do
    FooView.render("index.html", assigns)
  end

  def mount(_params, _session, socket) do
    {:ok,
     assign(socket,
       option: "Option A",
       yass: "hidden"
     )}
  end

  def handle_event("yass", _params, socket) do
    yass =
      case socket.assigns.yass do
        "hidden" -> ""
        _ -> ""
      end

    {:noreply, assign(socket, yass: yass)}
  end

  def handle_event("set_option", %{"option" => option}, socket) do
    IO.puts("set_option #{option}")

    {:noreply, assign(socket, option: option)}
  end
end
