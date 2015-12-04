#Person Class.
class Person
#create a renter with name, a budget, and a credit score
attr_accessor :name, :budget, :credit_score

	def initialize (name, budget, credit_score)
		@name = name
		@budget = budget
		@credit_score = credit_score
		end

end
