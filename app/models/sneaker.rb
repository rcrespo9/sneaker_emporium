class Sneaker < ActiveRecord::Base
  attr_accessible :name, :price, :brand_id, :store_ids

  belongs_to :brand
  has_and_belongs_to_many :stores
end
