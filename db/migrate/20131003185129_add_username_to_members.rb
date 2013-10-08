class AddUsernameToMembers < ActiveRecord::Migration
  def change
    add_column :members, :username, :string
    add_column :members, :waist_measurement, :integer
    add_column :members, :hip_measurement, :integer
    add_column :members, :thigh_measurement, :integer
  end
end
