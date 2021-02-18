class User < ApplicationRecord
    has_many :recipes
    has_many :country_of_origins, through: :recipes
    has_secure_password
end
