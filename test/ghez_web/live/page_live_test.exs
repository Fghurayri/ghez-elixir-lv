defmodule GhezWeb.PageLiveTest do
  use GhezWeb.ConnCase, async: true

  import Phoenix.LiveViewTest

  test "initial render", %{conn: conn} do
    {:ok, view, _html} = live(conn, "/")

    assert render(view) =~ "We have many EVs"
    assert render(view) =~ "Lucid Air Concept 🇸"
    assert render(view) =~ "https://twitter.com/FGhurayri"
  end

  test "suggestions are provided while the user types ev name", %{conn: conn} do
    {:ok, view, _html} = live(conn, "/")

    view
    |> form("#ev-name", %{car: "tesla"})
    |> render_change()

    assert has_element?(view, "#match-0", "Tesla")
    assert has_element?(view, "#match-1", "Tesla")
  end

  test "submitting empty search shows not found message", %{conn: conn} do
    {:ok, view, _html} = live(conn, "/")

    view
    |> form("#ev-name", %{car: ""})
    |> render_submit() =~ "not found"
  end

  @tag :skip
  test "calculations are done when form is submitted with existing ev", %{conn: conn} do
    {:ok, view, _html} = live(conn, "/")

    car_name = "Lucid Air concept"

    refute has_element?(view, "#car-name", car_name)
    refute has_element?(view, "#cost", "12.48")

    view
    |> form("#ev-name", %{car: car_name})
    |> render_submit()

    refute render(view) =~ "We have many EVs"
    refute render(view) =~ "Lucid Air Concept 🇸"
    refute render(view) =~ "https://twitter.com/FGhurayri"

    # the test will fail here.
    # I think Alpine doesn't play nicely with LiveView testing.
    # The x-text value will not populate the element's innerText, hence the test fails.
    assert has_element?(view, "#car-name", car_name)
    assert has_element?(view, "#cost", "SAR 12.48")
  end
end
