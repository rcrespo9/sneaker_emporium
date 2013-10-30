class SneakersAndStores < ActiveRecord::Migration
  def change
  	create_table :sneaker_stores, id: false do |t|
    t.integer :sneaker_id
    t.integer :store_id
 	end
  end
end
