class StoreLink < ActiveRecord::Base
	belongs_to :pant
	validates_presence_of :url
end
