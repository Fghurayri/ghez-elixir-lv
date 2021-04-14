defmodule Ghez.Power do
  @moduledoc """
  SASO approves the following specs:
    - 127 volt @ 15 amps
    - 220 volt @ 13 amps

  source: https://saso.gov.sa/ar/mediacenter/news/Pages/saso_news_449.aspx
  """

  defstruct volt: nil, amp: nil

  @charging_efficiency 0.9
  @kwh_rate_in_halalah 0.16

  def get_power_spec(220), do: %__MODULE__{volt: 220, amp: 13}
  def get_power_spec(110), do: %__MODULE__{volt: 110, amp: 15}

  def get_power_by_volt(volt) do
    get_power_spec(volt)
  end

  def get_watt(%__MODULE__{volt: volt, amp: amp}) do
    volt * amp
  end

  def convert_watt_to_kwatt(watt) do
    watt / 1000
  end

  def get_percentage_to_be_charged(target_percentage, starting_percentage) do
    target_percentage - starting_percentage
  end

  @doc """
  the `total_capacity` should be in kwatt
  """
  def get_capacity_to_be_filled(percentage_to_be_charged, total_capacity) do
    percentage_to_be_charged / 100 * total_capacity
  end

  @doc """
  Returns the duration in hours
  """
  def calculate_charging_time(load_power, battery_capacity) do
    battery_capacity / (load_power * @charging_efficiency)
  end

  @doc """
  Returns the cost in SAR
  """
  def calculate_charging_cost(capacity_to_be_filled) do
    capacity_to_be_filled * @kwh_rate_in_halalah
  end
end
