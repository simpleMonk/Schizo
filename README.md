Schizo
======

** TODO: Add description **

How to get Ecto

mix ecto.create -r Schizo.Repo //creates the database
mix ecto.drop -r Schizo.Repo //drops its

mix ecto.gen.migration AddUserTable
mix ecto.migrate // migrate
mix ecto.rollback 1 //rollback

iex -S mix

** start the repo **
Schizo.Repo.start_link

** create a new user **
user = %User{first_name: "Senthil", last_name: "Kumar",age: 32}
Schizo.Repo.insert(user);

** update a user **
thisUser = Schizo.Repo.get(Schizo.User,:id)
thisUserNameUpdated = %{ thisUser | first_name: "Updated Name Senthil"}
Schizo.Repo.update(thisUserNameUpdated)

** add a new comment and associate it to a use **
comment = %Comment{ message: "Message 1 by senthil---"}
comment  = Ecto.Changeset.change(comment, user_id: senthil.id);
Schizo.Repo.insert(comment);

** get the user comments **
senthil = senthil |> Schizo.Repo.preload([:comments])
