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
[] use scope methods in views somewhere
[] oauth
[] nested routes
    [] a nested new route with form that relates to the parent (so, new recipe for user.)
    [] a nested index or show route (user's recipes) **Can I do a nested route under users if I have protections to ensure only the user who is signed in can go to their route?**
[] forms should display validation errors
    [] fields_with_errors class (form_for)
    [] error messages must be present within the view
[] DRY
    [] logic present in controllers should be encapsulated as methods in your models
    [] viwes should use helper methods and partials when appropriate
    [] follow patterns in Rails Style Guide

    