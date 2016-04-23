class NetType < ActiveRecord::Base
  has_many :gear_actions

  def to_s
    "#{mesh_size} cm #{net_use} from #{origin} (#{net_code})"
  end
end
