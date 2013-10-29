class CreateSneakers < ActiveRecord::Migration
  def change
    create_table :sneakers do |t|
      t.string :name
      t.float :price
      t.integer :brand_id

      t.timestamps
    end
  end
end
