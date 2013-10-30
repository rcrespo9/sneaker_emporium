class SneakersStores < ActiveRecord::Migration
   def change
  	create_table :sneakers_stores, id: false do |t|
    t.integer :sneaker_id
    t.integer :store_id
 	end
   end
end
