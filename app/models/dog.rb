class Dog < ApplicationRecord
    has_one_attached :avatar
    has_secure_password
    validates_uniqueness_of :username
    validates :username, presence: true 

    has_many :comments
    has_many :cats, through: :comments


end
