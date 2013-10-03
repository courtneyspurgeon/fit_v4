class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :title
      t.integer :waist_fit
      t.integer :hip_fit
      t.integer :thigh_fit
      t.integer :rise
      t.integer :waist_measure
      t.integer :hip_measure
      t.integer :thigh_measure
      t.text :content
      t.integer :pant_id

      t.timestamps
    end
  end
end
