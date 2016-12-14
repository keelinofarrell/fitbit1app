class Member < ActiveRecord::Base
	belongs_to :fitbit
	has_many :comments
	has_secure_password
	validates_uniqueness_of :username
	validates_uniqueness_of :email
	validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/}
	
	
end
