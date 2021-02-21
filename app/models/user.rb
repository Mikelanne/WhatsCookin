class User < ApplicationRecord
    has_many :recipes
    has_many :country_of_origins, through: :recipes
    has_secure_password
    validates :username, presence: true
    validates :username, :email, uniqueness: true


    def self.create_from_omniauth(auth)
        User.find_or_create_by(uid: auth['uid'], provider: auth['provider']) do |u|
            u.username = auth['info']['name']
            u.email = auth['info']['email']
            u.password = SecureRandom.hex(12)
        end
    end
end
