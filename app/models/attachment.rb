class Attachment < ActiveRecord::Base
	belongs_to :attachable, :polymorphic => true
	
  has_attached_file :attachment,
	    :styles => {
	      :thumb=> "100x100#",
	      :small  => "300x300>",
	      :large => "600x600>"
	        }
	validates_attachment_content_type :attachable, :content_type => 'image/jpeg'
end
# class Attachment < ActiveRecord::Base
#   attr_accessible :attachable, :attached_content_type, 
#     :attached_file_name, :attached_file_size, :attached_updated_at,
#     :type, :description, :created_by, :updated_by, :attached, 
#     :attachable_id, :attachable_type, :created_by_id, :updated_by_id

#   belongs_to :attachable, :polymorphic => true
  
#   has_attached_file :attached
# end