class ProfilesController < ApplicationController
  before_action :set_profile, only: [:edit, :update]
  before_action :authenticate_user!

  def new
    @profile = Profile.new
  end

  def create
    @profile = current_user.build_profile(profile_params)

    if @profile.save
      redirect_to edit_profile_path(@profile), notice: "Profile successfully created"
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @profile.update(profile_params)
      redirect_to edit_profile_path(@profile), notice: "Profile successfully updated"
    else
      render :edit
    end
  end

  private
    def set_profile
      if (current_user.profile.occupation == 'admin')
        @profile = Profile.find(params[:id])
      else
        @profile = current_user.profile
      end
    end

    def profile_params
      params.require(:profile).permit(:first_name, :last_name, :occupation, :id)
    end
end
