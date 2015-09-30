class Api::V1::ExcitedsController < ApplicationController
  respond_to :json

  def index
    respond_with Excited.all
  end

  def show
    respond_with Excited.find_by(song: params[:data])
  end

  def destroy
    song = Excited.find_by(song: params[:data])
    respond_with song.destroy
  end

  def create
    respond_with Excited.create(song_params), location: nil
  end

  private

  def song_params
    params.require(:new).permit(:song)
  end
end
