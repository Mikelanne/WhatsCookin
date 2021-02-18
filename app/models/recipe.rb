class Recipe < ApplicationRecord
    belongs_to :country_of_origin
    belongs_to :user
end
