class CreditsController < ApplicationController
  def view
    @credit = Credit.find_by_credit_code(params[:credit_code])
    raise ActionController::RoutingError.new('Not Found') if @credit == nil
  end
end
