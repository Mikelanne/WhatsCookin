class Recipe < ApplicationRecord
    belongs_to :country_of_origin
    belongs_to :user
    validates :name, :ingredients, :directions, :country_of_origin_id, :user_id, presence: true

    def self.ordered_by_skill_level
        self.order(skill_level: :desc)
    end
end
