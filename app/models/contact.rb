class Contact < ActiveRecord::Base  
	
	validates_presence_of :name, :email, :message
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create  

  attr_accessible :name, :email, :message
end
