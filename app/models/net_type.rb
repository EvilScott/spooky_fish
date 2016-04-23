class NetType < ActiveRecord::Base
  has_many :gear_actions
  def to_s
    net_code
  end
end
