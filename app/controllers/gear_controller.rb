class GearController < ApplicationController
  def index
  end

  def recycle
    @recycle = GearAction.new
  end

  def sold
    @purchase = GearAction.new(action_type_id: 1) # TODO placeholder
  end

  def submit
  end
end
