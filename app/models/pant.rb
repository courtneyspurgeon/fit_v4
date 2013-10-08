class Pant < ActiveRecord::Base
  belongs_to :brand
  has_many :reviews
  
  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>", :full => "600x600" }
  
  #has_many :attachments, :as => :attachable, :dependent => :destroy
  #has_one :attachment, :as => :attachable, :dependent => :destroy

  validates :name, :brand_id, presence: true

  TYPE = {
    1 => 'Jeans',
    2 => 'Dress Pants',
    3 => 'Khaki',
    4 => 'Cordoroy',
    5 => 'Canvas',
    6 => 'Other'
  }
end
