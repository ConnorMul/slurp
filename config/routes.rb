Rails.application.routes.draw do
  resources :kitchens
  resources :add_cocktail_to_kitchens
  resources :cocktails
  resources :users
  resources :reviews
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
