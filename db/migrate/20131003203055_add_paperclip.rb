class AddPaperclip < ActiveRecord::Migration
  def self.up
    add_attachment :members, :avatar
    add_attachment :reviews, :image
    add_attachment :pants, :image
  end

  def self.down
    remove_attachment :members, :avatar
    remove_attachment :reviews, :image
    remove_attachment :pants, :image
  end
end