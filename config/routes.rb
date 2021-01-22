Rails.application.routes.draw do
  # user routes
  get "/users" => "users#index"

  #item routes
  get "/items" => "items#index"
  get "/items/:id" => "items#show"
  post "/items" => "items#create"
  patch "/items/:id" => "items#update"
  delete "/items/:id" => "items#destroy"

  # resources :categories

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
