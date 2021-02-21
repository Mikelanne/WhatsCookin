class RecipesController < ApplicationController

    def index
        if params[:country_id] && @country = CountryOfOrigin.find_by_id(params[:country_id])
            @recipes = @country.recipes.ordered_by_skill_level
        else 
            @recipes = Recipe.all.ordered_by_skill_level
        end
    end

    def show
        @recipe = Recipe.find_by(id: params[:id])
    end

    def new
        if params[:country_id] && @country = CountryOfOrigin.find_by_id(params[:country_id])
            @recipe = @country.recipes.build
        else
            @recipe = Recipe.new
            @recipe.build_country_of_origin
        end
    end

    def create
        @recipe = Recipe.new(recipe_params(:name, :ingredients, :directions, :skill_level, :meal_type, :description, :country_of_origin_id, country_of_origin_attributes: [:name]))
        @recipe.user_id = current_user.id
        if @recipe.save
            redirect_to recipe_path(@recipe)
        else
            render :new
        end
    end

    def edit
        @recipe = Recipe.find_by(id: params[:id])
        if @recipe.user_id == current_user.id
            render :edit
        else
            flash[:message] = "You can only edit your own recipes."
            redirect_to user_path(current_user)
        end
    end

    def update
        @recipe = Recipe.find_by(id: params[:id])
        if @recipe.user_id == current_user.id
            @recipe.update(recipe_params(:name, :ingredients, :directions, :skill_level, :meal_type, :country_of_origin_id, :description, country_of_origin_attributes: [:name]))
            redirect_to recipe_path(@recipe)
        else
            flash[:message] = "You can only edit your own recipes."
            redirect_to user_path(current_user)
        end
    end

    def destroy
        recipe = Recipe.find_by(id: params[:id])
        if recipe.user_id == current_user.id
            recipe.destroy
            redirect_to recipes_path
        else
            flash[:message] = "You can only delete your own recipes."
            redirect_to recipes_path(recipe)
        end
    end

    def dinner
        @dinner = Recipe.dinner
    end

    def breakfast
        @breakfast = Recipe.breakfast
    end

    def lunch
        @lunch = Recipe.lunch
    end

    def snacks
        @snacks = Recipe.snack
    end

    def dessert
        @desserts = Recipe.dessert
    end

    private

    def recipe_params(*args)
        params.require(:recipe).permit(*args)
    end
end
