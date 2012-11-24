class Review < ActiveRecord::Base
  attr_accessible :author, :charity_id, :description, :name, :rating, :recommend, :title
end
