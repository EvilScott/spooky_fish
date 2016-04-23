class Region < ActiveRecord::Base
	has_many :gear_actions
	def to_s
		region_name
	end
end
