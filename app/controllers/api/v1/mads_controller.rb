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

  def create
    respond_with Mad.create(song_params), location: nil
  end

  private

  def song_params
    params.require(:new).permit(:song)
  end
end
