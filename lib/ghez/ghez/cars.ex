defmodule Ghez.Cars do
  alias Ghez.Car

  def suggest(""), do: []

  def suggest(term) do
    Enum.filter(list_cars(), fn car -> String.downcase(car.name) =~ String.downcase(term) end)
  end

  def list_cars do
    [
      %Car{
        name: "Tesla Roadster 2.5 Sport",
        battery_size: 53,
        range_in_km: 393
      },
      %Car{
        name: "Tesla Roadster 2.5 Base",
        battery_size: 53,
        range_in_km: 393
      },
      %Car{
        name: "BMW i4",
        battery_size: 80,
        range_in_km: 340
      },
      %Car{
        name: "Lucid Air concept",
        battery_size: 130,
        range_in_km: 400
      }
    ]
  end
end
