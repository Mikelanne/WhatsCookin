module RecipesHelper

    def display_header(country)
        if country
            "Recipes from #{country.name}"
        else
            "Recipe Library"
        end
    end
end
