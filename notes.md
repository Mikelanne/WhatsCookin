MODELS
    - User
        has_many recipes
        has_many CountryOfOrigins, through recipes

        attributes
            - username
            - password
            - skill level

    - CountryOfOrigin
        has_many recipes
        has_many users, through recipes

        attributes
            - Country_of_origin
            - meal type

    - Recipe
        belongs_to CountryOfOrigin
        belongs_to user

        attributes
            - ingredients
            - directions
            - skill level
            - meal type
            - user_id
            - CountryOfOrigin_id

MEAL TYPES 
- breakfast
- lunch
- dinner
- dessert
- snacks


TO DO:
[x] scope method where the recipes are ordered by meal type.
[x] use scope methods in views somewhere
[] oauth
[] nested routes
    [] a nested new route with form that relates to the parent (nest recipe new under country?)
    [x] a nested index or show route (under country, recipe index for all the recipes related to that country.)
[] forms should display validation errors
    [] fields_with_errors class (form_for)
    [] error messages must be present within the view
[] DRY
    [] logic present in controllers should be encapsulated as methods in your models
    [] viwes should use helper methods and partials when appropriate
    [] follow patterns in Rails Style Guide
[] welcome page
[] style
[x] figure out edit form to not allow changes to user_id

[] do more with country show page
[] do more with country index

[] add description to recipes 
[] nav links
[x] partials for recipes
    [] figure out how to render a partial within a partial for the new form only -- like we did for countries in form, do that for user_id maybe?
[] figure out why you have require login or if you need it
[x] user CAN change country_id on recipe under edit


    

    <%= f.collection_select(:country_of_origin_id, CountryOfOrigin.all, :id, :country, {:include_blank => true} )%>