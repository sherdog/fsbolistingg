class AddFeaturedToListings < ActiveRecord::Migration
  def change
  	add_column :listings, :featured, :integer, :default => 0
  end
end
