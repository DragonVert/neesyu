Rails.application.routes.draw do
  resources :profils
  resources :events
  devise_for :users
  root to: 'pages#home'

  # resultats de recherche
  get '/pages/search', to: 'pages#search', as: 'search'

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
