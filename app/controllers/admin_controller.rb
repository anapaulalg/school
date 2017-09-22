class AdminController < ApplicationController

  def index
    if (current_user.profile.occupation != 'admin')
      return redirect_to index_path
    end
    @check = Pair.count
    @profile = current_user.profile
    @profiles = Profile.where(occupation: "student")

    @pair1 = Pair.where(pair_at: Time.now.strftime("%Y-%m-%d")).pluck(:user_id).to_a
    @pair2 = Pair.where(pair_at: Time.now.strftime("%Y-%m-%d")).pluck(:pair_user_id).to_a
    @current_date = Time.now
    @past_days = Pair.where("pair_at > ?", @current_date.strftime("%Y-%m-%d"))


  end

  def show
    @profile = current_user.profile
    @profiles = Profile.all
    @users = User.all
  end
end
