class ActionType < ActiveRecord::Base
 has_many :gear_actions
  def to_s
   action_name
  end
end
