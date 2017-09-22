class AdminController < ApplicationController

  def index
    if (current_user.profile.occupation != 'admin')
      return redirect_to index_path
    end

    @profile = current_user.profile
    @profiles = Profile.all
  end

  def show
    @profile = current_user.profile
    @profiles = Profile.all
    @users = User.all
  end
end
