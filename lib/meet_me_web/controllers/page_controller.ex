defmodule MeetMeWeb.PageController do
  use MeetMeWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
