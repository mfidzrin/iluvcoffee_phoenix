defmodule IluvcoffeePhoenixWeb.PageController do
  use IluvcoffeePhoenixWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
