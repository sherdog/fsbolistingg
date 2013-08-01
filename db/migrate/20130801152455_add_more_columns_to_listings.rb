class AddMoreColumnsToListings < ActiveRecord::Migration
  def change
  	add_column :listings, :sqft, :decimal
  	add_column :listings, :type, :integer
  	add_column :listings, :bedrooms, :integer
  	add_column :listings, :basement, :boolean
  	add_column :listings, :status, :integer
  	add_column :listings, :bathrooms, :decimal
  	add_column :listings, :lot_size, :string
  	add_column :listings, :fireplace, :integer
  	add_column :listings, :cooling, :string
  	add_column :listings, :garage, :string
  	add_column :listings, :heating, :string
  	add_column :listings, :year_built, :string
  	add_column :listings, :interior_features, :string
  	add_column :listings, :exterior_features, :string
  	add_column :listings, :elementary_school, :string
  	add_column :listings, :middle_school, :string
  	add_column :listings, :high_school, :string
  	add_column :listings, :contact_number, :string
  	add_column :listings, :contact_email, :string
  	add_column :listings, :mls_number, :string
  end
end