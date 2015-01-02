class Review < ActiveRecord::Base
  has_one :pant

  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>", :full => "600x600" }

  #enum attributes
  enumerate :hip_fit, :with => HipFit
  enumerate :waist_fit, :with => WaistFit
  enumerate :thigh_fit, :with => ThighFit
  enumerate :rise, :with => Rise

end
