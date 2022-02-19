defmodule MdlWeb.Home do
  use MdlWeb, :live_view

  def mount(_args, _session, socket) do
    {:ok, assign(socket, active_component: "biography")}
  end

  def handle_event("change_component", %{"component" => component}, socket) do
    {:noreply,
      socket
      |> assign(active_component: component)
      |> push_event("component_changed", %{})
    }
  end

  def nav_button_class(component, assigned_component) do
    class = "grow hover:bg-neutral-600 w-full"
    if component == assigned_component do
      class <> " fill-orange-600"
    else
      class
    end
  end

  def render_component("biography") do
    MdlWeb.Home.Biography
  end

  def render_component("skills") do
    MdlWeb.Home.Skills
  end

  def render_component("experience") do
    MdlWeb.Home.Experience
  end

  def render_component("education") do
    MdlWeb.Home.Education
  end

  def render_component("projects") do
    MdlWeb.Home.Projects
  end
end
