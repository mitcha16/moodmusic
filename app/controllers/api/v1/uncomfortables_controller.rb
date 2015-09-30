class Api::V1::UncomfortablesController < ApplicationController
  respond_to :json

  def index
    respond_with Uncomfortable.all
  end

  def show
    respond_with Uncomfortable.find_by(song: params[:data])
  end

  def destroy
    song = Uncomfortable.find_by(song: params[:data])
    respond_with song.destroy
  end

  def create
    respond_with Uncomfortable.create(song_params), location: nil
  end

  private

  def song_params
    params.require(:new).permit(:song)
  end
end
