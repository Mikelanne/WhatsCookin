module RecipesHelper

    def display_header(country)
        if country
            "Recipes from #{country.name}"
        else
            "Recipe Library"
        end
    end

    def display_country_fields(country, f)
        if country
            f.hidden_field :country_of_origin_id
        else
            render partial: "country_select", locals: {f: f}
        end
    end
end
