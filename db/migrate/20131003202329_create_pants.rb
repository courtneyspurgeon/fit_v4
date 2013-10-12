class CreatePants < ActiveRecord::Migration
  def change
    create_table :pants do |t|
      t.string :name
      t.integer :year
      t.integer :style
      t.integer :price_range
      t.integer :pant_type, default: 1
      t.integer :leg_cut
      t.integer :body_shape
      t.integer :rise
      t.decimal :exact_rise
      t.belongs_to :brand

      t.timestamps
    end
  end
end
