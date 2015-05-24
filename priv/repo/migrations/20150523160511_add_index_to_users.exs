defmodule Schizo.Repo.Migrations.AddIndexToUsers do
  use Ecto.Migration
  @disable_ddl_transaction true

  def change do
    create index(:users,[:id])
  end
end
