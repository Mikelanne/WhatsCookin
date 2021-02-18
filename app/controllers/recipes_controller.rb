class RecipesController < ApplicationController

    def index
       @recipes = Recipe.all.ordered_by_skill_level
    end

    def show
        @recipe = Recipe.find_by(id: params[:id])
    end

    def new
    end

    def create
    end

    def edit
    end

    def update
    end

    def destroy
    end
end
