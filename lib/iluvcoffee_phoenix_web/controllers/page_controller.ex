defmodule IluvcoffeePhoenixWeb.PageController do
  use IluvcoffeePhoenixWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end

  def hello_world(conn, _params) do
    json(conn, %{hello: "world"})
  end
end
