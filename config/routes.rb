Rails.application.routes.draw do
  # USERS Routes
  get "/signup" => "users#new"
  post "/users" => "users#create"
  delete "/users/:id" => "users#destroy"

  # VEHICLE Routes
  get "/vehicles" => "vehicles#index"
  get "/vehicles/:id" => "vehicles#show"
  post "/vehicles" => "vehicles#create"
  patch "/vehicles/:id" => "vehicles#update"
  delete "/vehicles/:id" => "vehicles#destroy"

  # FUEL RECORD Routes
  get "/fuels" => "fuels#index"
  post "/fuels" => "fuels#create"
  #delete "/fuels/:id" => "fuels#destroy"

  # SESSIONS Routes
  get "/login" => "sessions#new"
  post "/sessions" => "sessions#create"
  get "/logout" => "sessions#destroy"

end
