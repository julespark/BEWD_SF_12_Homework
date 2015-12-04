#Apartment class.
class Apartment
	#Create a new apartment with unit, rent, sqft, num_bedrooms, num_bathrooms
	attr_accessor :unit, :rent, :sqft, :num_bedrooms, :num_bathrooms, :renters

	def initialize (unit, rent, sqft, bed, bath)
		@unit = unit
		@rent = rent
		@sqft = sqft
		@num_bedrooms = bed
		@num_bathrooms = bath
		@renters = []
	end

	def apply_renter?(renter)
		if renter.credit_score > 600 && renter.budget > @rent
			true
		else
			false
		end
	end

	def add_renter(renter)
		@renters.push(renter)
	end

	def show_renters()
		@renters.each do |renter|
			"#{@unit} has these renters: #{renter.name}"
		end


	end




end
