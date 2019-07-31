class Comment < ApplicationRecord
  attr_accessor :author, :receiver

  belongs_to :dog
  belongs_to :cat


  #def intialize(author, receiver)

  #end

end
