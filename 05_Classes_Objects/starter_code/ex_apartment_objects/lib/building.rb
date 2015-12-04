#Building Class
class Building
	#Create a new building with this name, address and number of apartments
	attr_accessor :name, :address, :num_apartments, :apartments

	def initialize (name, address, num_apartments)
		@name = name
		@address = address
		@num_apartments = num_apartments
		@apartments = []
	end

	def display_apartments
		@apartments.each do |apt|
			if apt.renters != []
			puts "Unit #{apt.unit} has #{apt.sqft}, #{apt.num_bedrooms}, #{apt.num_bathrooms}, it's taken!"
		else
			puts "Unit #{apt.unit} has #{apt.sqft}, #{apt.num_bedrooms}, #{apt.num_bathrooms}, it's available!"
		end
	end
	end



end


# "Unit 1A has 600 sqft, 1 bed, 1 bath, it's available!"
# "Unit 1B has 1400 sqft, 2 bed, 1 bath, it's available!"
# "Unit 2A has 2000 sqft, 3 bed, 2 bath, it's available!"
# => nil