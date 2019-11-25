Rails.application.routes.draw do
  resources :recipes
  resources :ingredients
  resources :unit_of_measures
  post '/recipeIngredient', to: "recipe_ingredient#create"
  put  '/recipeIngredient/:id', to: "recipe_ingredients#update"

  # TODO: Refactor routes to match what is actually needed
  ####### recipe should be only resource?
  ####### ingredients should have post/create and search
  ####### unit_of_measures should match ingredients?
  ####### 

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
