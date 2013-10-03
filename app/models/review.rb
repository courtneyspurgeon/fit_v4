class Review < ActiveRecord::Base
  has_one :pant

  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>", :full => "600x600" }

  WAIST_FIT = {
    1 => 'Very baggy',
    2 => 'Ok with a belt',
    3 => 'Perfect fit',
    4 => 'Bit tight',
    5 => 'Too tight'
  }
  HIP_FIT = {
    1 => 'Very baggy',
    2 => 'Good fit, and I like loose pants',
    3 => 'Perfect fit',
    4 => 'Good fit, and I like tight pants',
    5 => 'Too tight/couldn\'t buckle'
  }

  THIGH_FIT = {
    1 => 'Very baggy',
    2 => 'Good fit, and I like loose pants',
    3 => 'Perfect fit',
    4 => 'Good fit, and I like tight pants',
    5 => 'Too tight/couldn\'t get on'
  }

  RISE = {
    1 => 'Very Low',
    2 => 'Low',
    3 => 'Mid',
    4 => 'High-Rise',
    5 => 'Very High Rise'
  }

end
