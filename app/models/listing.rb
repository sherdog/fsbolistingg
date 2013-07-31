class Listing < ActiveRecord::Base

  # Setup accessible (or protected) attributes for your model
  attr_accessible :title, :address_1, :address_2, :city, :state, :zipcode, :description

  has_many :features
  belongs_to :user
  
  # attr_accessible :title, :body

end
