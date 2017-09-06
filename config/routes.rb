Rails.application.routes.draw do
  get "/" => "pets#user_index"

  get "/breeds" => "breeds#index"
  get "/breeds/:id" => "breeds#show"

  get "/mypets" => "pets#user_index"
  get "/pets" => "pets#index"
  get "/pets/new" => "pets#new"
  post "/pets" => "pets#create"
  get "/pets/:id" => "pets#show"
  get "/pets/:id" => "pets#delete"

  get "/matches" => "matches#index"
  post "/matches" => "matches#create"
  get "/matches/:id" => "matches#show"

  get "/signup" => "users#new"
  post "/users" => "users#create"

  get "/login" => "sessions#new"
  post "/login" => "sessions#create"
  get "/logout" => "sessions#destroy"
end