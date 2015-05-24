defmodule Schizo.Comment do
  use Ecto.Model
  alias Schizo.User

  schema "comments" do
    field :message
    belongs_to :user, User
    timestamps
  end

end
