class Cat < ApplicationRecord
    has_many :comments
    has_many :dogs, through: :comments
end
