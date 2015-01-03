class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer   :pant_id
      t.integer   :pant_size_id
      t.integer   :user_id
      t.string    :title
      t.text      :content
      t.integer   :waist_fit
      t.integer   :hip_fit
      t.integer   :thigh_fit
      t.integer   :rise
      t.integer   :waist_measurement
      t.integer   :hip_measurement
      t.integer   :thigh_measurement

      t.timestamps
    end

    add_index :reviews, :pant_id
    add_index :reviews, :pant_size_id
    add_index :reviews, :user_id
  end
end
