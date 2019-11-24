Rails.application.routes.draw do
  resources :recipes
  resources :ingredients
  resources :unit_of_measures
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
