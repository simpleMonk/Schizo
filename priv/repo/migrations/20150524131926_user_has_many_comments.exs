defmodule Schizo.Repo.Migrations.UserHasManyComments do
  use Ecto.Migration

  def change do
    alter table(:comments) do
      add :user_id,:integer
    end
  end
end
