class CreateUserMessages < ActiveRecord::Migration
  def change
    create_table :user_messages do |t|
      t.string :from
      t.string :phone
      t.string :message
      t.integer :user_id
      t.integer :listing_id
      t.text :message
      t.datetime :date_added
      t.boolean :viewed

      t.timestamps
    end
  end
end
