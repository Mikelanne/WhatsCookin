class Recipe < ApplicationRecord
    belongs_to :CountryOfOrigin
    belongs_to :user
end
