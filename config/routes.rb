Rails.application.routes.draw do
  resources :profils
  resources :events
  resources :participations, only: [:create, :destroy]
  resources :interets, only: [:create, :destroy]
  resources :suivis, only: [:create, :destroy]
  devise_for :users
  root to: 'pages#home'

  mount Attachinary::Engine => "/attachinary"

  # resultats de recherche
  get '/search', to: 'pages#search', as: 'search'
  get '/contact', to: 'pages#contact', as: 'contact'
  get '/duplicate/:id', to: 'events#duplicate', as: 'duplicate'


# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
