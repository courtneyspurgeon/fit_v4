class Review < ActiveRecord::Base
  belongs_to :pant
  belongs_to :user
  belongs_to :pant_size

  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>", :full => "600x600" }

  #enum attributes
  enumerate :hip_fit, :with => HipFit
  enumerate :waist_fit, :with => WaistFit
  enumerate :thigh_fit, :with => ThighFit
  enumerate :rise, :with => Rise

  #validations
  validates :user_id, :presence => { :message => "How did you get here without a user id?" }
  validates :pant_id, presence: true
  validates :title, presence: true
  validates :hip_measurement, presence: true
  validates :thigh_measurement, presence: true
  validates :waist_measurement, presence: true

  # TODO: validates_associated :pant

  accepts_nested_attributes_for :pant_size

end
