class Sneaker < ActiveRecord::Base
  attr_accessible :name, :price

  belongs_to :brands
  has_and_belongs_to_many :stores
end
