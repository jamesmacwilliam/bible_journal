defmodule BibleJournal.PageController do
  use BibleJournal.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
