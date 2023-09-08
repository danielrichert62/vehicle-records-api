Rails.application.routes.draw do
  post "/users" => "users#create"
  delete "/users/:id" => "users#destroy"

  # VEHICLE Routes
  get "/vehicles" => "vehicles#index"
  post "/vehicles" => "vehicles#create"
  delete "/vehicles/:id" => "vehicles#destroy"
  #delete "/vehicles/:id" => "vehicles#destroy"

  # FUEL RECORD Routes
  get "/fuels" => "fuels#index"
  post "/fuels" => "fuels#create"
  #delete "/fuels/:id" => "fuels#destroy"

  # SESSIONS Routes
  get "/login" => "sessions#new"
  post "/sessions" => "sessions#create"
  get "/logout" => "sessions#destroy"

  get "/signup" => "users#new"
  post "/users" => "users#create"
end
