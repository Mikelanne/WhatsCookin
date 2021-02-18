class Recipe < ApplicationRecord
    belongs_to :country_of_origin
    belongs_to :user
    validates :name, :ingredients, :directions, :country_of_origin_id, :user_id, presence: true
    scope :breakfast, -> { where(meal_type: "breakfast")}
    scope :lunch, -> { where(meal_type: "lunch")}
    scope :dinner, -> { where(meal_type: "dinner")}
    scope :snack, -> { where(meal_type: "snack")}

    def self.ordered_by_skill_level
        self.order(skill_level: :asc)
    end
end
