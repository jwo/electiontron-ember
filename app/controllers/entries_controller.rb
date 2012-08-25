class EntriesController < ApplicationController
  respond_to :json

  def index
    respond_with Entry.all
  end
end
