class Review < ActiveRecord::Base
  attr_accessible :author, :charity-id, :description, :name, :rating, :recommend, :title
end
