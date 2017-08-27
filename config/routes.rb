Rails.application.routes.draw do
  get "/breeds" => "breeds#index"
  get "/breeds/:id" => "breeds#show"

  get "/pets" => "pets#index"
  get "/pets/new" => "pets#new"
  post "/pets" => "pets#create"
  get "/pets/:id" => "pets#show"
end
