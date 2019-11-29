class Ingredient < Searchable
    has_many :recipes, :through => :recipe_ingredients
end
