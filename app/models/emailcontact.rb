class Emailcontact < ActiveRecord::Base
    validates_presence_of :emailaddress
  validates_format_of :emailaddress, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create
  attr_accessible :emailaddress
end
