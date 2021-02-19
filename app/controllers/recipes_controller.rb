class RecipesController < ApplicationController

    def index
       @recipes = Recipe.all.ordered_by_skill_level
    end

    def show
        @recipe = Recipe.find_by(id: params[:id])
    end

    def new
        @recipe = Recipe.new
    end

    def create

    end

    def edit
    end

    def update
    end

    def destroy
    end

    private

    def recipe_params
        params.require(:recipe).permit(:name, :ingredients, :directions, :skill_level, :meal_type, :user_id, :country_of_origin_id)
    end
end
