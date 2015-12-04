require 'pry'

class Apartment
	# unit = "1A", sqft = 600, num_bedrooms = 1, num_bathrooms = 1
	attr_accessor :unit, :sqft, :num_bedrooms, :num_bathrooms

	def initialize (unit, sqft, bed, bath)
		@unit = unit
		@sqft = sqft
		@num_bedrooms = bed
		@num_bathrooms = bath
	end

	def to_s
		"Apartment:"

	end
end