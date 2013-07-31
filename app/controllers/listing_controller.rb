class ListingController < ApplicationController

	#user listing
	def list

	end

	#public listings
	#search variables to filter results
	def browse
		@listings = Listing.find(:all)
		
		
	end

	#public listing view
	def show
		
	end

	#user create listing
	def create
		
	end
	#user updating list
	# GET
	def edit

	end

	#user updated listing
	#POST
	def update

	end

	#user deleting listing
	#POST
	def delete

	end


end
