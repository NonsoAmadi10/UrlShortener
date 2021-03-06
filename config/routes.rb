Rails.application.routes.draw do
  
  mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "graphql#execute"
  post "/graphql", to: "graphql#execute"
  
  get '/:id', to: 'urls#show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
