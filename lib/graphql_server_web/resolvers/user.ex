defmodule GraphqlServerWeb.Resolvers.User do
  alias GraphqlServerWeb.User

  def all(params, _), do: User.all(params)

  def find(%{id: id}, _) do
    id = String.to_integer(id)

    User.find(%{id: id})
  end

  def create(params, _) do

    %{id: id} = params
    id = String.to_integer(id)
    sanitized_params = Map.put(params, :id, id)
    User.create(sanitized_params)
  end

end
