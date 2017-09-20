class AdminpageController < ApplicationController

  def index
    @profile = current_user.profile
    @profiles = Profile.all
  end

end
