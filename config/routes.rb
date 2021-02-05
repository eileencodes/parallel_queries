Rails.application.routes.draw do
  resources :roses
  resources :succulents
  resources :cats
  resources :dogs
  resources :houses
  resources :people
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
