class ListingsController < ApplicationController

	#user listing
	def list

	end

	#public listings
	#search variables to filter results
	def browse
		@listings = Listings.find(:all)
	end

	#public listing view
	def show
		
	end

	#user create listing
	def create
		
	end
	def new
		@states = [
	    [ "Alabama", "AL" ],
	    [ "Alaska", "AK" ],
	    [ "Arizona", "AZ" ],
	    [ "Arkansas", "AR" ],
	    [ "California", "CA" ],
	    [ "Colorado", "CO" ],
	    [ "Connecticut", "CT" ],
	    [ "Delaware", "DE" ],
	    [ "Florida", "FL" ],
	    [ "Georgia", "GA" ],
	    [ "Hawaii", "HI" ],
	    [ "Idaho", "ID" ],
	    [ "Illinois", "IL" ],
	    [ "Indiana", "IN" ],
	    [ "Iowa", "IA" ],
	    [ "Kansas", "KS" ],
	    [ "Kentucky", "KY" ],
	    [ "Louisiana", "LA" ],
	    [ "Maine", "ME" ],
	    [ "Maryland", "MD" ],
	    [ "Massachusetts", "MA" ],
	    [ "Michigan", "MI" ],
	    [ "Minnesota", "MN" ],
	    [ "Mississippi", "MS" ],
	    [ "Missouri", "MO" ],
	    [ "Montana", "MT" ],
	    [ "Nebraska", "NE" ],
	    [ "Nevada", "NV" ],
	    [ "New Hampshire", "NH" ],
	    [ "New Jersey", "NJ" ],
	    [ "New Mexico", "NM" ],
	    [ "New York", "NY" ],
	    [ "North Carolina", "NC" ],
	    [ "North Dakota", "ND" ],
	    [ "Ohio", "OH" ],
	    [ "Oklahoma", "OK" ],
	    [ "Oregon", "OR" ],
	    [ "Pennsylvania", "PA" ],
	    [ "Rhode Island", "RI" ],
	    [ "South Carolina", "SC" ],
	    [ "South Dakota", "SD" ],
	    [ "Tennessee", "TN" ],
	    [ "Texas", "TX" ],
	    [ "Utah", "UT" ],
	    [ "Vermont", "VT" ],
	    [ "Virginia", "VA" ],
	    [ "Washington", "WA" ],
	    [ "West Virginia", "WV" ],
	    [ "Wisconsin", "WI" ],
	    [ "Wyoming", "WY" ]
	  ].freeze
		@listing = Listing.new
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
