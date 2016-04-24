class GearController < ApplicationController
  def index
    @reports = GearAction.order(:created_at).all
  end

  def recycle
    @recycle = GearAction.new(action_type: ActionType.recycled)
  end

  def sold
    @sold = GearAction.new(action_type: ActionType.sold)
  end

  def submit_sold
    @sold = GearAction.new(gear_action_params)

    if gear_action_params[:reason_id] == 2
      credit = Credit.find_by_credit_code(gear_action_params[:recycling_credit_code])
      if credit.nil?
        @sold.errors.add(:credit, ' not found')
      else
        @sold.credit = credit
      end
    end

    if @sold.valid?
      @sold.save
      flash[:notice] = 'Sold gear report generated successfully'
      redirect_to gear_path
    else
      flash[:error] = @sold.errors.full_messages
      render 'sold'
    end
  end

  def submit_recycle
    @recycle = GearAction.new(gear_action_params)

    if @recycle.valid?
      credit = Credit.generate
      @recycle.credit = credit
      @recycle.save
    else
      flash[:error] = @recycle.errors.full_messages
      return render 'recycle'
    end

    flash[:notice] = 'Recycling report generated successfully'
    redirect_to credits_path(credit_code: credit.credit_code)
  end

  private
  def gear_action_params
    params.require(:gear_action).permit(:action_type_id, :owner, :net_type_id, :region_id, :reason_id,
                                        :credit_id, :recycling_credit_code, :disposal_receipt)
  end
end
