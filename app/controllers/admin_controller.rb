class AdminController < ApplicationController

  def index
    if (current_user.profile.occupation != 'admin')
      return redirect_to index_path
    end

    @profile = current_user.profile
    @profiles = Profile.all

    @pair1 = Pair.where(pair_at: Time.now.strftime("%Y-%m-%d")).pluck(:user_id).to_a
    @pair2 = Pair.where(pair_at: Time.now.strftime("%Y-%m-%d")).pluck(:pair_user_id).to_a

  end

  def show
    @profile = current_user.profile
    @profiles = Profile.all
    @users = User.all
  end
end
