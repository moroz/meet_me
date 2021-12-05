defmodule MeetMe.Factory do
  use ExMachina.Ecto, repo: MeetMe.Repo

  @password "oRD2k5S#B7Cj17xY"
  @password_hash Bcrypt.hash_pwd_salt(@password)

  def unique_user_email, do: "user#{System.unique_integer()}@example.com"
  def unique_nickname, do: "user#{System.unique_integer()}"
  def valid_user_password, do: @password

  def user_factory do
    %MeetMe.Accounts.User{
      email: unique_user_email(),
      hashed_password: @password_hash,
      password: @password,
      first_name: "John",
      last_name: "Smith",
      nickname: unique_nickname(),
      date_of_birth: ~D[1970-01-01]
    }
  end
end
