class Page < ActiveRecord::Base               
	acts_as_tree  :order => "pageorder"
	has_many :galleries, :dependent => :destroy                   
 # has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" } 
	scope :tree, order("pageorder ASC").includes(:children)   

  attr_accessible :parent_id, :name, :content, :image, :pageorder, :redirect, :controller_name, :action_name 
	validates_presence_of :name  
	validates_uniqueness_of :name

end
