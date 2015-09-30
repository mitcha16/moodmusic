class Api::V1::MadsController < ApplicationController
  respond_to :json

  def index
    respond_with Mad.all
  end

  def show
    respond_with Mad.find_by(song: params[:data])
  end

  def destroy
    song = Mad.find_by(song: params[:data])
    respond_with song.destroy
  end
end
