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
    # TODO simplify this, and separate endpoints for sold and recycle
    unless gear_action_params[:recycling_credit_code].nil?
      credit = Credit.find_by_credit_code(gear_action_params[:recycling_credit_code])
      if credit.nil?
        flash[:error] = 'Credit code not found'
        return redirect_to :back
      end
      gear_action_params[:credit_id] = credit.id
    end

    new_action = GearAction.create(gear_action_params)
    if new_action.errors.empty?
      flash[:notice] = 'Report generated successfully'
    else
      flash[:error] = new_action.errors.full_messages
    end
    redirect_to :back
  end

  def submit_recycle
    new_action = GearAction.new(gear_action_params)
    if new_action.valid?
      credit = Credit.generate
      new_action.credit_id = credit.id
      new_action.save
    else
      flash[:error] = new_action.errors.full_messages
      return redirect_to :back
    end

    flash[:notice] = 'Recycling Report generated successfully'
    redirect_to credits_path(credit_code: credit.credit_code)
  end

  private
  def gear_action_params
    params.require(:gear_action).permit(:action_type_id, :owner, :net_type_id, :region_id, :reason_id,
                                        :credit_id, :recycling_credit_code, :disposal_receipt)
  end
end
