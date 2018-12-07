Rails.application.routes.draw do
  get 'home/show'
  resources :order_items
  resource :carts, only: [:show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "home#index"
  devise_for :users, controllers: { registrations: 'users/registrations' }
  resources :categories
  resources :meals
end
