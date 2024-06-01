defmodule GraphqlServerWeb.Resolvers.User do
  alias GraphqlServerWeb.User

  def all(params, _), do: User.all(params)

  def find(%{id: id}, _) do
    id = String.to_integer(id)

    User.find(%{id: id})
  end

 # def create(params, _),  do: User.create(params)
 # def update(params, _),  do: User.update(params)
end
