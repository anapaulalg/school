class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  protect_from_forgery with: :exception

  after_action :verify_user

  def verify_user
    if current_user.present?
      @profile = current_user.profile
      @current_time = Time.now.strftime("%Y/%m/%d")
      @refresh = Pair.where("? > 2017-09-21", :pair_at)

      @students = Profile.where(occupation: "student")
      if(@refresh)
        @students.each do |student|
          student.active = true
          student.save
        end
      end
    end
  end
end
