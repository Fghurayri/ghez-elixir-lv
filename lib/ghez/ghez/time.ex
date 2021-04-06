defmodule Ghez.Time do
  def convert_hours_duration_to_human(duration) do
    case convert_hours_to_hours_minutes(duration) do
      {0, minutes} ->
        "#{minutes} minutes"

      {hours, 0} ->
        "#{hours} hours"

      {hours, minutes} ->
        "#{hours} hours and #{minutes} minutes"
    end
  end

  def convert_hours_to_hours_minutes(duration) do
    hours = trunc(duration)
    minutes = ((duration - hours) * 60) |> trunc()
    {hours, minutes}
  end
end
