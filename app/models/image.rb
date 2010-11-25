class Image < ActiveRecord::Base 
	
	belongs_to :gallery  
	
  attr_accessible :page_id, :gallery_id, :title, :description ,:photo
 has_attached_file :photo, :styles => { :medium => "600x600>", :thumb => "100x100>" }     
end
