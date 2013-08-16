class CreateListingImages < ActiveRecord::Migration
  def change

    create_table :images do |t|
      t.string :listing_id
      t.string :image_file_name
      t.string :image_content_type
      t.string :image_file_size
      t.timestamps
    end
  end
end
