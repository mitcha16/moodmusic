class Api::V1::UpsetsController < ApplicationController
  respond_to :json

  def index
    respond_with Upset.all
  end

  def show
    respond_with Upset.find_by(song: params[:data])
  end

  def destroy
    song = Upset.find_by(song: params[:data])
    respond_with song.destroy
  end
end
