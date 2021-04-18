defmodule GhezWeb.PageLive do
  use GhezWeb, :live_view

  alias Ghez.Cars
  alias Ghez.Car

  def init_assigns(socket) do
    assign(socket,
      car: "",
      matches: [],
      not_found: false,
      selected_car: %Car{}
    )
  end

  def mount(_params, _session, socket) do
    {:ok, init_assigns(socket)}
  end

  def handle_event("reset", _payload, socket) do
    {:noreply, init_assigns(socket)}
  end

  def handle_event("suggest-car", %{"car" => car}, socket) do
    socket = assign(socket, not_found: false)

    case Cars.suggest(car) do
      [] ->
        {:noreply, socket}

      [_car] ->
        {:noreply, socket}

      matches ->
        {:noreply, assign(socket, matches: matches)}
    end
  end

  def handle_event("select-car", %{"car" => car}, socket) do
    case Cars.get_car(car) do
      [] ->
        {:noreply, assign(socket, not_found: true)}

      [selected_car] ->
        {:noreply, assign(socket, selected_car: selected_car)}
    end
  end
end
