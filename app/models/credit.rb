class Credit < ActiveRecord::Base
  has_many :gear_actions
  def to_s
    credit_code
  end
end
