class CountryOfOriginsController < ApplicationController

    def index
        @countries = CountryOfOrigin.all
    end

    def show
    end

end
