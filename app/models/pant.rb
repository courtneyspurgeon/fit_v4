class Pant < ActiveRecord::Base

  # Relationships
  belongs_to :brand
  has_many :reviews, dependent: :destroy
  has_many :store_links
  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>", :full => "600x600" }

  # Nested Attributes
  accepts_nested_attributes_for :store_links,
      :reject_if => :all_blank,
      :allow_destroy => true
  
  #has_many :attachments, :as => :attachable, :dependent => :destroy
  #has_one :attachment, :as => :attachable, :dependent => :destroy

  # Validations
  validates :name, :brand_id, presence: true

  # Enums
  enumerate :rise, :with => Rise
  enumerate :leg_cut, :with => LegCut
  enumerate :body_shape, :with => BodyShape
  enumerate :pant_style, :with => PantStyle
  enumerate :pantType, :with => PantType


  def self.search(search)
    if search
      where 'name LIKE ?', "%#{search}%"
    else
      scoped
    end
  end
  
end
