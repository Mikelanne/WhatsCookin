class User < ApplicationRecord
    has_many :recipes
    has_many :CountryOfOrigins, through: :recipes
end
