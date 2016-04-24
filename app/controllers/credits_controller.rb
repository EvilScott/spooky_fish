class CreditsController < ApplicationController
  def view
    @credit = Credit.find_by_id(params[:id])
    raise ActionController::RoutingError.new('Not Found') if @credit == nil
  end
end
