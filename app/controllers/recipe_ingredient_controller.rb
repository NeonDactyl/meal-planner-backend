class RecipeIngredientController < ApplicationController

    def create
        recipeIngredient = RecipeIngredient.new(recipe_ingredient_params)
        recipeIngredient.save
        render json: recipeIngredient.to_json()
    end

    def update
        recipeIngredient = RecipeIngredient.find(params[:id])
        if recipeIngredient.update(recipe_ingredient_params)
            render json: recipeIngredient.to_json()
        end
    end
    

    private

    def recipe_ingredient_params
        params.require(:recipe_ingredient).permit(:quantity, :ingredient_id, :recipe_id, :unit_of_measure_id)
    end
    
    
end
