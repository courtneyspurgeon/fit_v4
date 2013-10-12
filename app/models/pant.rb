class Pant < ActiveRecord::Base
  belongs_to :brand
  has_many :reviews, dependent: :destroy
  has_many :store_links
  accepts_nested_attributes_for :store_links,
      :reject_if => :all_blank,
      :allow_destroy => true
  
  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>", :full => "600x600" }
  
  #has_many :attachments, :as => :attachable, :dependent => :destroy
  #has_one :attachment, :as => :attachable, :dependent => :destroy

  validates :name, :brand_id, presence: true

  PANT_TYPE = {
    1 => 'Jeans',
    2 => 'Dress Pants',
    3 => 'Khaki',
    4 => 'Cordoroy',
    5 => 'Canvas',
    6 => 'Other'
  }

  LEG_CUT = {
    1 => 'Skinny',
    2 => 'Straight',
    3 => 'Bootcut',
    4 => 'Legging',
    5 => 'Boyfriend',
    6 => 'Flare'
  }

  BODY_SHAPE = {
    1 => 'Slim',
    2 => 'Average',
    3 => 'Slight Curve',
    4 => 'Curvy',
    5 => 'Plus-Size Fit'
  }

  STYLE = {
    1 => 'Contemporary',
    2 => 'Timeless',
    3 => 'Relaxed',
    4 => 'Trend',
    5 => 'Surf and Skate'
  }

  RISE = {
    1 => 'Ultra-Low Rise',
    2 => 'Low Rise',
    3 => 'Mid Rise',
    4 => 'Just Below Waist',
    5 => 'At Waist (High-Rise)'
  }

  YEAR_OPTIONS = {
    Time.now.year.to_i => 'This Year',
    Time.now.last_year.year.to_i => 'Last Year',
    0 => 'Older/Unknown'
  }

  def self.search(search)
    if search
      where 'name LIKE ?', "%#{search}%"
    else
      scoped
    end
  end
  
end
