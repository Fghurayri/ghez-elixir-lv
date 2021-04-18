defmodule Ghez.Car do
  @derive {Jason.Encoder, only: [:name, :battery_size, :range_in_km]}
  defstruct [:name, :battery_size, :range_in_km]
end
