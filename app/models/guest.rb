class Guest < ActiveRecord::Base
	#has_one :agent
	has_many :accomodation
	belongs_to :agent
end
