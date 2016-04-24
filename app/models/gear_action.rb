class GearAction < ActiveRecord::Base
  belongs_to :action_type
  belongs_to :net_type
  belongs_to :region
  belongs_to :reason
  belongs_to :credit

  validates :owner, presence: true
end
