class Tweet < ActiveRecord::Base
	 def self.search_for(q)
  	self.where("text LIKE :q", q: "%#{q}%")
  end
end
