class AddMoreColsToListings < ActiveRecord::Migration
  def change
  	add_column :listings, :basement_type, :string
  end
end
