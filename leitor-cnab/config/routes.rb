Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :transactions, :except => [:edit, :update, :show]
  resources :stores

  # Defines the root path route ("/")
  root "transactions#index"
end
