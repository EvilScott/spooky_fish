class ActionType < ActiveRecord::Base
 has_many :gear_actions

 def self.recycled
   find_by_action_name('Recycled')
 end

 def self.sold
   find_by_action_name('Sold')
 end

 def to_s
   action_name
  end
end
