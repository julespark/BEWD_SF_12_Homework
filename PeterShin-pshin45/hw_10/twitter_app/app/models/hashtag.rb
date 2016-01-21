class Hashtag < ActiveRecord::Base
  def self.search_for(query)
    Hashtag.where('name LIKE :query', query: "%#{query}%")
  end
end
