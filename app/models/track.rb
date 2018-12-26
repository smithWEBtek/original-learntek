class Track < ApplicationRecord
	has_many :track_resources
	has_many :resources, through: :track_resources
	
	has_many :track_activities
	has_many :activities, through: :track_activities
end