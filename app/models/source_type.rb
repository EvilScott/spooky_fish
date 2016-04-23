class SourceType < ActiveRecord::Base
  has_many :sources

  def to_s
    name
  end
end
