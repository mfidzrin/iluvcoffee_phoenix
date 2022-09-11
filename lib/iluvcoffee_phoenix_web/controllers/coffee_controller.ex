defmodule IluvcoffeePhoenixWeb.CoffeeController do
  use IluvcoffeePhoenixWeb, :controller

  def get_all(conn, _params) do
    coffees  = get_coffees()
    json(conn, coffees)
  end

  def get_one(conn, params) do
    coffee = get_coffee(params["id"])
    json(conn, coffee)
  end

  defp get_coffees() do
    [%{:id => 1, :name => "Cappuccino"}, %{:id => 2, :name => "Latte"}, %{:id => 3, :name => "Espresso"}]
  end

  defp get_coffee(id) do
    coffees = get_coffees()
    Enum.find(coffees, &(&1.id ==  String.to_integer(id)))
  end
end
