class CountryOfOriginsController < ApplicationController

    def index
        @countries = CountryOfOrigin.all
    end

    def show
        @country = CountryOfOrigin.find_by(id: params[:id])
    end

end
