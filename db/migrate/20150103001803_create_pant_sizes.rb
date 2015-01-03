class CreatePantSizes < ActiveRecord::Migration
  def change
    create_table :pant_sizes do |t|
      t.integer :pant_id
      t.text :size

      t.timestamps
    end

    add_index :pant_sizes, :pant_id
  end
end
