class Dog < ApplicationRecord
    has_secure_password
    validates_uniqueness_of :username
    
    has_many :comments
    has_many :cats, through: :comments


end
