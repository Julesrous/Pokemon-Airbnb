Rails.application.routes.draw do
  devise_for :users
  root to: 'pokemons#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :pokemons, only: [:index, :new, :create, :show, :destroy] do
    resources :chatrooms, only: [:new, :create]
    resources :rents, only: [:create]
    resources :review_pokemons, only: [:create]
  end
  resources :users, only: [:show] do
    resources :review_users, only: [:create]
  end
  resources :chatrooms, only: [:index, :show] do
    resources :messages, only: [:create]
  end
end
