class Reason < ActiveRecord::Base
	has_many :gear_actions
	def to_s
		reason_type
	end
end
