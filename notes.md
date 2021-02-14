MODELS
    - User
        has_many recipes
        has_many cookbooks, through recipes

        attributes
            - username
            - password
            - skill level

    - Cookbook
        has_many recipes
        has_many users, through recipes

        attributes
            - title
            - meal type
            - cuisine

    - Recipe
        belongs_to cookbook
        belongs_to user

        attributes
            - ingredients
            - directions
            - skill level
            - cuisine
            - meal type
            - user_id
            - cookbook_id

MIGRATIONS


CONTROLLERS


VIEWS


ROUTES