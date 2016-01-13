class Tweet < ActiveRecord::Base
  def self.search_for(query)
    Tweet.where('text LIKE :query', query: "%#{query}%")
  end
end
