class Pant < ActiveRecord::Base
  belongs_to :brand
  has_many :reviews
  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>", :full => "600x600" }

  validates :name, presence: true

  TYPE = {
    1 => 'Jeans',
    2 => 'Dress Pants',
    3 => 'Khaki',
    4 => 'Cordoroy',
    5 => 'Canvas',
    6 => 'Other'
  }
end
