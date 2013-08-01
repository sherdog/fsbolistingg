class DashboardController < ApplicationController

before_filter :authenticate_user!

 def index

 	#see if user has any current listings.
 	@user = User.find(current_user.id)
 	@listings = @user.listings 
 	
 	
  end
end
