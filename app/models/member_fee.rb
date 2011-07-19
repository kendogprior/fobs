class MemberFee < ActiveRecord::Base

  attr_accessible :member_type, :fee

  validates_uniqueness_of :member_type , :message => "You already have this name"
  validates_numericality_of :fee
  validates_presence_of :member_type, :fee
end
