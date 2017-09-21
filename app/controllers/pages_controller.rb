class PagesController < ApplicationController

  def home
    @profile = current_user.profile
    @student_id = []

    @profile.active = false
    @profile.save

    @profiles = Profile.where(active: true)
    @profiles.each do |profile|
       @student_id << profile.id
    end

    @current_time = Time.now.strftime("%Y/%m/%d")
    @pair_id = @student_id.sample(1)
    @student = Profile.where(id: @pair_id).first
    @pairs = Pair.where(user_id: @profile.id, pair_user_id: @student.id).first unless !@student
    @test = Pair.where(user_id: @profile.id, pair_at: @current_time).first

    if(!@pairs && !@test)
        @student.active = false
        @student.save
        @add = Pair.new(user_id: @profile.id, pair_user_id: @student.id, pair_at: Time.now.strftime("%Y/%m/%d"))
        @add.save
        @add = Pair.new(user_id: @student.id, pair_user_id: @profile.id, pair_at: Time.now.strftime("%Y/%m/%d"))
        @add.save
    end
      #If current user and match already exist
    @student = Profile.where(id: @test.pair_user_id).first unless !@test
  end




end
