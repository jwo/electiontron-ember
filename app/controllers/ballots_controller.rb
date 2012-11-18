class BallotsController < ApplicationController
  respond_to :json

  def index
    respond_with Ballot.with_code(params[:code]).all
  end

end
