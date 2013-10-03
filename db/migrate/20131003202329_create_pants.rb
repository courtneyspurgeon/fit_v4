class CreatePants < ActiveRecord::Migration
  def change
    create_table :pants do |t|
      t.string :name
      t.integer :year
      t.integer :style
      t.integer :price_range
      t.belongs_to :brand

      t.timestamps
    end
  end
end
