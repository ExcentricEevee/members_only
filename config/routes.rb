Rails.application.routes.draw do
  devise_for :users

  # Defines the root path route ("/")
  root "posts#index"

  resources :posts, only: [:index, :new, :create]
end
