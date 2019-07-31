class Cat < ApplicationRecord
    has_one_attached :avatar
    has_secure_password
    validates_uniqueness_of :username

    has_many :comments
    has_many :dogs, through: :comments
end
