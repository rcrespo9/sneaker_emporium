class Store < ActiveRecord::Base
  attr_accessible :name, :sneaker_ids

  has_and_belongs_to_many :sneakers
end
