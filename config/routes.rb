Rails.application.routes.draw do
  resources :recipes do
    get 'search', on: :collection
  end
  resources :ingredients do
    get 'search', on: :collection
  end
  resources :unit_of_measures do
    get 'search', on: :collection
  end
  post '/recipeIngredient', to: "recipe_ingredient#create"
  put  '/recipeIngredient/:id', to: "recipe_ingredients#update"

  # TODO: Refactor routes to match what is actually needed
  ####### recipe should be only resource?
  ####### ingredients should have post/create and search
  ####### unit_of_measures should match ingredients?
  ####### 
end
