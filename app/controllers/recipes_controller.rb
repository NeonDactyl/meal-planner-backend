class RecipesController < ApplicationController

    def index
        recipes = Recipe.all
        render json: recipes.to_json(:include => { 
            :recipe_ingredients => {
                :include => {
                    :ingredient => {
                        :only => [:name, :id]
                    },
                    :unit_of_measure => {
                        :only => [:name, :id]
                    }
                },
                :only => [:quantity, :id]
            }
        },
        :only => [:name, :id, :instruction_set])
    end
    
    def show
        recipe = Recipe.find(params[:id])
        render json: recipe.to_json(:include => { 
            :recipe_ingredients => {
                :include => {
                    :ingredient => {
                        :only => [:name, :id]
                    },
                    :unit_of_measure => {
                        :only => [:name, :id]
                    }
                },
                :only => [:quantity, :id, :recipe_id]
            }
        },
        :only => [:name, :id, :instruction_set])
    end

    def create
        recipe = Recipe.new(recipe_params)
        recipe.save
    end

    def search
        recipes = Recipe.search(params[:query])
        render json: recipes.to_json()
    end

    private

    def recipe_params
        params.require(:recipe).permit(:name, :instruction_set)
    end
    
    
end
