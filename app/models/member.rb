class Member < ActiveRecord::Base
  attr_accessible :name, :street, :town, :country, :postcode, :telenum, :email, :datejoin, :datepaid, :membertype, :amountpaid
  validates_presence_of :name,:street,:town,:email,:postcode, :membertype
end
