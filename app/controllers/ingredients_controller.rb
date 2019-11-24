class IngredientsController < ApplicationController
    def create
        ingredient = Ingredient.new(ingredient_params)
        ingredient.save
        render json: ingredient.to_json()
    end
    
    private

    def ingredient_params
        params.require(:ingredient).permit(:name)
    end
    
end
