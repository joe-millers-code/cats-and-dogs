class Dog < ApplicationRecord
    has_many :comments
    has_many :cats, through: :comments
end
