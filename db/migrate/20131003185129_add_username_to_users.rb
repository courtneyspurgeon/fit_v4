class AddUsernameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :username, :string
    add_column :users, :waist_measurement, :integer
    add_column :users, :hip_measurement, :integer
    add_column :users, :thigh_measurement, :integer

    add_index :users, :username, :unique => true
  end
end
