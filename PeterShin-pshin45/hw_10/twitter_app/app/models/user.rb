class User < ActiveRecord::Base
  validates :name, presence: true
  validates :premium_member, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 1, only_integer: true }

  def self.search_for(query)
    User.where('name LIKE :query', query: "%#{query}%")
  end
end
