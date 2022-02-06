defmodule RockeliveryWeb.UsersView do
  use RockeliveryWeb, :view

  alias Rockelivery.User

  def render("create.json", %{user: %User{} = user}) do
    %{
      message: "User created!",
      user: user
    }
  end

  def render("user.json", %{user: %User{} = user}), do: render_one(user, RockeliveryWeb.UsersView, "user.json")
  def render("user.json", %{users: users}) when is_list(users), do: render_many(users, RockeliveryWeb.UsersView, "user.json")
  def render("user.json", %{users: %User{} = user}), do: user
end
