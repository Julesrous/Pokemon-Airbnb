Rails.application.routes.draw do
  devise_for :users
  root to: 'pokemons#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :pokemons, only: [:index, :new, :create, :show]
  resources :users, only: [:show]
end
