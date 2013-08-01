class Listing < ActiveRecord::Base

  # Setup accessible (or protected) attributes for your model
  attr_accessible :title, :address_1, :address_2, :city, :state, :zipcode, :description, :price, :mls_number, :type, :year_built, :sqft, :bedrooms, :bathrooms, :heating, :cooling, :basement_type, :elementary_school, :middle_school, :high_school, :contact_email, :contact_number

 # has_many :features
  belongs_to :user
  
  # attr_accessible :title, :body

end
