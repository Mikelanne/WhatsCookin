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

MIGRATIONS


CONTROLLERS


VIEWS


ROUTES