Rails.application.routes.draw do
  resources :profils
  resources :events
  devise_for :users
  root to: 'pages#home'

  mount Attachinary::Engine => "/attachinary"

  # resultats de recherche
  get '/search', to: 'pages#search', as: 'search'
  get '/contact', to: 'pages#contact', as: 'contact'


# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
