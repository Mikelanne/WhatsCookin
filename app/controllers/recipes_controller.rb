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
        @recipe = Recipe.new(recipe_params(:name, :ingredients, :directions, :skill_level, :meal_type, :user_id, :country_of_origin_id))
        if @recipe.save
            redirect_to recipes_path
        else
            @errors = @recipe.errors.full_messages
            render :new
        end
    end

    def edit
        @recipe = Recipe.find_by(id: params[:id])
    end

    def update
        @recipe = Recipe.find_by(id: params[:id])
        @recipe.update(recipe_params(:name, :ingredients, :directions, :skill_level, :meal_type))
        redirect_to recipe_path(@recipe)
    end

    def destroy
        recipe = Recipe.find_by(id: params[:id])
        recipe.destroy
        redirect_to recipes_path
    end

    private

    def recipe_params(*args)
        params.require(:recipe).permit(*args)
    end
end
