Rails.application.routes.draw do
  resources :kitchens
  resources :add_cocktail_to_kitchens
  resources :cocktails
  resources :users
  resources :reviews

  root 'sessions#home'
 
  delete 'sessions/logout', to: 'sessions#logout', as: 'logout'
  get "/login", to: 'sessions#new', as: 'new_login'
  post '/login', to: 'sessions#login', as: 'login'
  get '/search', to: 'cocktails#search', as: 'search_page'
  get '/signup', to: 'users#new', as: 'signup'
  get 'sessions/home', to: 'sessions#home', as: 'home'

end
