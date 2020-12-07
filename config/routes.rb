Rails.application.routes.draw do
  resources :kitchens, only: [:show, :update]
  resources :cocktails, only: [:index, :show, :create, :new]
  resources :users, only: [:index, :show, :create, :new, :edit, :update]
  resources :reviews, only: [:new, :create, :edit, :update, :destroy]

  root 'cocktails#index'
 
  delete 'sessions/logout', to: 'sessions#logout', as: 'logout'
  get "/login", to: 'sessions#new', as: 'new_login'
  post '/login', to: 'sessions#login', as: 'login'
  get '/search', to: 'cocktails#search', as: 'search_page'
  get '/signup', to: 'users#new', as: 'signup'
  get 'sessions/home', to: 'sessions#home', as: 'home'
  get 'homepage/index'

end
