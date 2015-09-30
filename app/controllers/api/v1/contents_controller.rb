class Api::V1::ContentsController < ApplicationController
  respond_to :json

  def index
    respond_with Content.all
  end

  def show
    respond_with Content.find_by(song: params[:data])
  end

  def destroy
    song = Content.find_by(song: params[:data])
    respond_with song.destroy
  end
end
