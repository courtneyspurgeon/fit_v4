class AddUsernameToMembers < ActiveRecord::Migration
  def change
    add_column :members, :username, :string
    add_column :members, :waist_measure, :integer
    add_column :members, :hip_measure, :integer
    add_column :members, :thigh_measure, :integer
  end
end
