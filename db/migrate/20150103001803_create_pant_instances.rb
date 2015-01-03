class CreatePantInstances < ActiveRecord::Migration
  def change
    create_table :pant_instances do |t|
      t.integer :pant_id
      t.text :size
      t.integer :waist_measurement
      t.integer :hip_measurement
      t.integer :thigh_measurement

      t.timestamps
    end

    add_index :pant_instances, :pant_id
  end
end
