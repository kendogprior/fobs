class Gallery < ActiveRecord::Base
  belongs_to :page
  has_many :images, :dependent => :destroy

  attr_accessible :page_id, :title



  def self.pagenumber(n)
    where("page_id = ?", n )
  end
end
