class CountryOfOrigin < ApplicationRecord
    has_many :recipes
    has_many :users, through: :recipes
    validates :country, presence: true
end
