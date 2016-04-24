class GearController < ApplicationController
  def index
  end

  def recycle
    @recycle = GearAction.new(action_type: ActionType.find_by_action_name('Recycled'))
  end

  def sold
    @sold = GearAction.new(action_type: ActionType.find_by_action_name('Sold'))
  end

  def submit
    new_action = GearAction.create(gear_action_params)
    if new_action.errors.empty?
      flash[:notice] = 'Report generated successfully'
    else
      flash[:error] = new_action.errors.full_messages
    end
    redirect_to sold_path
  end

  private
  def gear_action_params
    params.require(:gear_action).permit(:action_type_id, :owner, :net_type_id, :region_id, :reason_id,
                                        :recycling_credit_code, :disposal_receipt)
  end
end
