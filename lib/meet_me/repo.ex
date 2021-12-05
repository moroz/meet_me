defmodule MeetMe.Repo do
  use Ecto.Repo,
    otp_app: :meet_me,
    adapter: Ecto.Adapters.Postgres
end
