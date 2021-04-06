defmodule Ghez.Car do
  defstruct [:name, :battery_size, :range_in_km]

  alias Ghez.Power

  def get_car_name(%__MODULE__{name: name}) do
    name
  end

  def get_dte_at_percent(%__MODULE__{range_in_km: range}, battery_percent) do
    (battery_percent / 100 * range) |> trunc()
  end

  def get_kwh_per_100km_efficiency(%__MODULE__{battery_size: size, range_in_km: range}) do
    (size / range) |> trunc()
  end

  def get_charging_cost(%__MODULE__{battery_size: battery_size}, start_soc, target_soc) do
    Power.get_percentage_to_be_charged(target_soc, start_soc)
    |> Power.get_capacity_to_be_filled(battery_size)
    |> Power.calculate_charging_cost()
  end

  def get_charging_time(%__MODULE__{battery_size: battery_size}, start_soc, target_soc, power) do
    capacity_to_be_filled =
      Power.get_percentage_to_be_charged(target_soc, start_soc)
      |> Power.get_capacity_to_be_filled(battery_size)

    Power.get_watt(power)
    |> Power.convert_watt_to_kwatt()
    |> Power.calculate_charging_time(capacity_to_be_filled)
  end
end
