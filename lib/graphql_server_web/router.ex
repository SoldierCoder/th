defmodule GraphqlServerWeb.Router do
  use GraphqlServerWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/" do
    pipe_through :api


    forward "/graphql", Absinthe.Plug, schema: GraphqlWeb.Schema
      
    forward "/graphiql", Absinthe.Plug.GraphiQL, 
      schema: GraphqlServerWeb.Schema,
      interface: :playground
  end
end
