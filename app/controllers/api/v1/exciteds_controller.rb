class Api::V1::ExcitedsController < ApplicationController
  respond_to :json

  def index
    respond_with Excited.all
  end
end
