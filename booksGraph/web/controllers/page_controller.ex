defmodule BooksGraph.PageController do
  use BooksGraph.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
