class AddColumnsToListings < ActiveRecord::Migration
  def change
  	create_table :listings do |t|
  		t.string :title
  		t.text :description
  		t.string :address_1
  		t.string :address_2
  		t.string :city
  		t.string :state
  		t.string :zipcode
  		t.integer :user_id 

  		t.timestamps
  	end
  end

  def up

  end

  def down

  end
end
