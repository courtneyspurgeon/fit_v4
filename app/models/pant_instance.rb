class PantInstance < ActiveRecord::Base

  # Relationships
  belongs_to :pant
  has_many :reviews

end