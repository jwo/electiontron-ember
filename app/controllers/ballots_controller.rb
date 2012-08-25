class BallotsController < ApplicationController
  respond_to :js

  def index
    respond_with Ballot.all
  end
end
