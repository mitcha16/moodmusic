class Api::V1::SadsController < ApplicationController
  respond_to :json

  def index
    respond_with Sad.all
  end

  def show
    respond_with Sad.find_by(song: params[:data])
  end

  def destroy
    song = Sad.find_by(song: params[:data])
    respond_with song.destroy
  end

  def create
    respond_with Sad.create(song_params), location: nil
  end

  private

  def song_params
    params.require(:new).permit(:song)
  end
end
