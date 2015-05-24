defmodule Schizo.User do
  use Ecto.Model
  alias Schizo.Comment

  schema "users" do
    field :first_name
    field :last_name
    field :age, :integer
    timestamps
    has_many :comments, Comment
  end

end
