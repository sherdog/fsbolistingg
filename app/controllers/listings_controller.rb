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
		@listing = Listing.find(params[:id])
	end

	def get_lat_long

	end

	#user create listing
	def create
		@listing = Listing.new(params[:listing])

		@listing.save
		redirect_to @listing
	end


	def new

		@heating_choices = [ ["Gas", "Gas"], ["Electric", "Electric"], ["Geothermal", "Geothermal"], ["Other", "Other"]]
		@cooling_choices = [ ["Central Air", "Central Air"], ["Geothermal", "Geothermal"], ["None", "None"], ["Other", "Other"]]
		@property_types = [ ["Single Family", "Single Family"], ["Condo", "Condo"], ["Multi Family", "Multi Family"], ["Vacant Land", "Vacant Land"], ["Mobile Home", "Mobile Home"] ]
		@basement_types = [ ["Finished", "Finished"], ["Unfinished", "Unfinished"], ["Other", "Other"], ["None", "None"]]

		@bathroom_col = (1..10).step(0.25)
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

	private

	  def listing_params
	  		params.require(:listing).permit(:address_1, :address_2, :city, :state, :zipcode, :price, :sqft, :type, :bedrooms, :basement, :status, :bathrooms, :lotsize, :fireplace, :cooling, :garage, :heating, :year_built, :interior_fetaures, :exterior_features, :elementary_school, :middle_school, :high_school, :contact_number, :contact_email, :mls_number)
	  end		
end
