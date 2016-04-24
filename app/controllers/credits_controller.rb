class CreditsController < ApplicationController
  def view
    @id = params[:id]
    @credit = Credit.find_by_id(@id)
  end
end
