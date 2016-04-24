class CreditsController < ApplicationController
  def view
    @credit = Credit.find_by_credit_code(params[:credit_code])
    @action = GearAction.find_by_credit_id(@credit.id)
    raise ActionController::RoutingError.new('Not Found') if @credit == nil
    render layout: "printable"
  end
end
