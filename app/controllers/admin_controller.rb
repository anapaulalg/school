class AdminController < ApplicationController

  def index
    @profile = current_user.profile
    @profiles = Profile.all
  end

  def show
    @profile = current_user.profile
    @profiles = Profile.all
    @users = User.all
  end
end
