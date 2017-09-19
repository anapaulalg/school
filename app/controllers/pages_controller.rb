class PagesController < ApplicationController

  def home
    @profile = current_user.profile

    @student_id = []
    @profiles = Profile.where(active: true)

    @profiles.each do |profile|
       @student_id << profile.id
    end

      @pair = @student_id.sample(1)
      @student = Profile.where(id: @pair).first

      @student.active = false
      @profile.active = false

      @student.save
      @profile.save

      @add = Pair.new(profile_id: @profile.id, match: @student.id)
      @add.save

  end

  def shown



  end


end
