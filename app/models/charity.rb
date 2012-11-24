class Charity < ActiveRecord::Base
  attr_accessible :country, :description, :location, :name
end
