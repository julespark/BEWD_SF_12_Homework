class Tweet < ActiveRecord::Base

	def self.search_for(query)                                                       
    where('text LIKE :query', :query => "%#{query}%") 
  end 
end
