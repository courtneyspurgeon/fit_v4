class Review < ActiveRecord::Base
  belongs_to :pant
  belongs_to :user

  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>", :full => "600x600" }

  #enum attributes
  enumerate :hip_fit, :with => HipFit
  enumerate :waist_fit, :with => WaistFit
  enumerate :thigh_fit, :with => ThighFit
  enumerate :rise, :with => Rise

  #validations
  validates :user_id, :presence => { :message => "How did you get here without a user id?" }
  validates :pant_id, :presence => { :message => "You must select the pant you're reviewing." }

  # TODO: validates_associated :pant

end
