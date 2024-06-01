defmodule GraphqlServerWeb.Schema do
  use Absinthe.Schema

  import_types GraphqlServerWeb.Types.User
  import_types GraphqlServerWeb.Queries.User
# import_types GraphqlServerWeb.Mutations.User

  query do
    import_fields(:user_queries)
  end

  # mutation do
  #   import_fields :user_mutations
  # end

  end

