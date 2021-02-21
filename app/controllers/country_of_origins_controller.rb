class CountryOfOriginsController < ApplicationController

    def index
        @countries = CountryOfOrigin.all
    end

end
