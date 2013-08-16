class ApplicationController < ActionController::Base
  protect_from_forgery
  
  #after_filter :store_location

 #def store_location
 # store last url - this is needed for post-login redirect to whatever the user last visited.
  #   if (request.fullpath != "/users/sign_in" && \
   #      request.fullpath != "/users/sign_up" && \
   #      !request.xhr?) # don't store ajax calls
  #     session[:previous_url] = request.fullpath 
   #  end
 #end


	protected

	def after_sign_up_path_for(resource)
		dashboard_index_path
	end

	def after_inactive_sign_up_path_for(resource)
		dashboard_index_path
	end


end
