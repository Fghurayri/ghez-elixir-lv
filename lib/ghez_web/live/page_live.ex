defmodule GhezWeb.PageLive do
  use GhezWeb, :live_view

  alias Ghez.Cars
  alias Ghez.Car
  alias Ghez.Power
  alias Ghez.Time

  def mount(_params, _session, socket) do
    {:ok, init_socket_assigns(socket)}
  end

  def init_socket_assigns(socket) do
    socket
    |> assign(%{
      car_input: "",
      matches: [],
      selected_car: "",
      starting_soc: 0,
      targeting_soc: 100,
      selected_power: Power.get_power_spec(220),
      power_220: Power.get_power_spec(220),
      power_110: Power.get_power_spec(110)
    })
  end

  def handle_event("reset", _payload, socket) do
    {:noreply, init_socket_assigns(socket)}
  end

  def handle_event("select-power", %{"volt" => volt}, socket) do
    selected_power = String.to_integer(volt) |> Power.get_power_by_volt()
    {:noreply, socket |> assign(selected_power: selected_power)}
  end

  def handle_event("suggest-car", %{"car" => car}, socket) do
    case Cars.suggest(car) do
      [] ->
        {:noreply, socket}

      [car] ->
        {:noreply, socket |> assign(selected_car: car)}

      matches ->
        {:noreply, socket |> assign(matches: matches)}
    end
  end

  def is_selecting_power(%{selected_power: selected_power}, power) do
    selected_power == power
  end

  def calculate_dte(%{selected_car: selected_car}, battery_percentage) do
    Car.get_dte_at_percent(selected_car, battery_percentage)
  end

  def calculate_watt(volt) do
    Power.get_power_by_volt(volt) |> Power.get_watt()
  end

  def calculate_charging_cost(%{
        selected_car: selected_car,
        starting_soc: starting_soc,
        targeting_soc: targeting_soc
      }) do
    Car.get_charging_cost(selected_car, starting_soc, targeting_soc) |> trunc()
  end

  def calculate_time(%{
        selected_car: selected_car,
        starting_soc: starting_soc,
        targeting_soc: targeting_soc,
        selected_power: selected_power
      }) do
    Car.get_charging_time(selected_car, starting_soc, targeting_soc, selected_power)
    |> Time.convert_hours_duration_to_human()
  end
end
