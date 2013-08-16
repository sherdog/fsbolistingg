class Listing < ActiveRecord::Base
  extend FriendlyId
  friendly_id :full_address, use: :slugged
  geocoded_by :full_address
  after_validation :geocode

  # Setup accessible (or protected) attributes for your model
  attr_accessible  :images_attributes, :image_attributes, :title, :address_1, :lot_size, :lat, :long, :slug, :address_2, :city, :state, :zipcode, :description, :price, :mls_number, :property_type, :year_built, :sqft, :bedrooms, :bathrooms, :heating, :cooling, :basement_type, :elementary_school, :middle_school, :high_school, :contact_email, :contact_number

 # has_many :features
  belongs_to :user

  has_many :images
  has_many :user_messages

  accepts_nested_attributes_for :images, :allow_destroy => true
  
  # attr_accessible :title, :body
  def full_address
  	"#{address_1}-#{address_2}-#{city}"
  end

  def listing_price=(value)
  	value = value.to_s.tr('$','').to_f
  	value = value.to_s.tr(',','').to_f
  	write_attribute(:price, value)
  end

end
