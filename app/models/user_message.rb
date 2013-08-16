class UserMessage < ActiveRecord::Base

  attr_accessible :date_added, :from, :listing_id, :message, :message, :phone, :user_id, :viewed

  belongs_to :user, :foreign_key => 'user_id'


end
