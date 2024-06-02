defmodule GraphqlServerWeb.Schema.Mutations.User do
  use Absinthe.Schema.Notation

  object :user_mutations do
    field :create_user, :user do
      arg :id, non_null(:id) 
      arg :name, :string
      arg :email, :string
      arg :preferences, :communication_preferences

      resolve(&GraphqlServerWeb.Resolvers.User.create/1)

    end

    field :update_user, :user do
      arg :id, non_null(:id) 
      arg :name, :string
      arg :email, :string
      
      resolve(&GraphqlServerWeb.Resolvers.User.update/1)
    end
  end
end

