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

  def create
    respond_with Upset.create(song_params), location: nil
  end

  private

  def song_params
    params.require(:new).permit(:song)
  end
end
