defmodule MeetMe.Repo.Migrations.AddCustomFieldsToUsers do
  use Ecto.Migration

  def change do
    alter table(:users) do
      add :date_of_birth, :date, null: false
      add :bio, :text
      add :first_name, :string, null: false
      add :last_name, :string
      add :nickname, :citext, null: false
    end
  end
end
