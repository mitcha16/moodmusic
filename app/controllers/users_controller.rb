class UsersController < ApplicationController
  def show
    authorize!
  end
end
