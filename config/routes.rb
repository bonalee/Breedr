Rails.application.routes.draw do
  get "/breeds" => "breeds#index"
  get "/breeds/:id" => "breeds#show"

  get "/user/pets" => "pets#user_index"
  get "/pets" => "pets#index"
  get "/pets/new" => "pets#new"
  post "/pets" => "pets#create"
  get "/pets/:id" => "pets#show"
  get "/pets/:id" => "pets#delete"

  get "/signup" => "users#new"
  post "/users" => "users#create"

  get "/login" => "sessions#new"
  post "/login" => "sessions#create"
  get "/logout" => "sessions#destroy"

  # root "sessions#new"
end