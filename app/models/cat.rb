class Cat < ApplicationRecord

    has_one_attached :avatar

    validates_uniqueness_of :username
    validates :username, presence: true
    has_secure_password


    has_many :comments
    has_many :dogs, through: :comments
end
