class Fitbit < ActiveRecord::Base
	has_many :members, dependent: :destroy
	has_many :comments, :dependent => :destroy
	
	def average_stars
		comments.average(:stars)
	end
	
	def self.search(query)
		where("name LIKE ?" , "%#{query}%")
	end
end
