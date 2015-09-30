class Api::V1::HappysController < ApplicationController
  respond_to :json

  def index
    respond_with Happy.all
  end

  def show
    respond_with Happy.find_by(song: params[:data])
  end

  def destroy
    song = Happy.find_by(song: params[:data])
    respond_with song.destroy
  end
end
