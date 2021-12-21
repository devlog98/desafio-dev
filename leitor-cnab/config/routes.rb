Rails.application.routes.draw do
  resources :transactions
  resources :stores
  resources :transaction_types
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
