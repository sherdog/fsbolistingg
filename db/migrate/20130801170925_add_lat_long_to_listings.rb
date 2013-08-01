class AddLatLongToListings < ActiveRecord::Migration
  def change
  	add_column :listings, :lat, :string
  	add_column :listings, :long, :string
  	change_column :listings, :type, :string
  end
end
