class Gallery < ActiveRecord::Base
  belongs_to :page
   has_and_belongs_to_many :images 

  attr_accessible :page_id, :title
   #validates_presence_of :title,  :message => "can't be blank"
   #validates_numericality_of :page_id,  :message => "not selected"
   #validates_presence_of :images, :message => " - at least one image must be selected" unless Image.find(:first) == nil


  def self.pagenumber(n)
    where("page_id = ?", n )
  end
end
