class Image < ActiveRecord::Base
  belongs_to :listing
  attr_accessible :listing_id, :image
  has_attached_file :image, :styles => { :thumb =>"50x50", :small => "150x150", :medium => "300x300", :large => "800x600" }

 

end
