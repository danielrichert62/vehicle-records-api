Rails.application.routes.draw do
  # get 'user/new'
  # get 'user/create'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # USER Routes
  get "/users" => "users#index"
  post "/users" => "users#create"

  # VEHICLE Routes
  get "/vehicles" => "vehicles#index"
  post "/vehicles" => "vehicles#create"

  # FUEL RECORD Routes
  get "/fuels" => "fuels#index"
  post "/fuels" => "fuels#create"
end
