Rails.application.routes.draw do
  resources :kitchens
  resources :add_cocktail_to_kitchens
  resources :cocktails
  resources :users
  resources :reviews

  root 'cocktails#search'
 
  delete 'sessions/logout', to: 'sessions#logout', as: 'logout'
  get "sessions/login", to: 'sessions#new', as: 'new_login'
  post '/login', to: 'sessions#login', as: 'login'
  get '/search', to: 'cocktails#search', as: 'search_page'
  get '/signup', to: 'users#new', as: 'signup'
end
