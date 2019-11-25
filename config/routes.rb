Rails.application.routes.draw do
  resources :order_items
  resources :items
  resources :orders
  resources :users

  post "/login", to: "auth#login"
  get "/persist", to: "auth#persist"
  post "/signup", to: "users#create"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
