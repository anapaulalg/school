class PagesController < ApplicationController


  def home

    # @profile = current_user.profile
    # @profile.active = false
    # @profile.save
    #
    # @student_id = []
    # @profiles = Profile.where(active: true)
    # @profiles.each do |profile|
    #    @student_id << profile.id
    # end
    #
    #   @pair = @student_id.sample(1)
    #   @student = Profile.where(id: @pair).first
    #
    #   @student.active = false
    #
    #
    #   @student.save
    #
    #
    #   @add = Pair.new(profile_id: @profile.id, match: @student.id)
    #   @add.save

    # @profile = current_user.profile
    #
    # @student_id = Random.rand(1..@students)
    # # @student = Profile.where(student_id: @student_id).first
    # @profiles = Profile.all
    #
    # @student_id = []
    # @profiles = Profile.where(active: true)
    #
    # @profiles.each do |profile|
    #    @student_id << profile.id
    # end
    #
    #   @pair = @student_id.sample(1)
    #   @student = Profile.where(id: @pair).first
    #
    #   @student.active = false
    #   @profile.active = false
    #
    #   @student.save
    #   @profile.save
    #
    #   @add = Pair.new(profile_id: @profile.id, match: @student.id)
    #   @add.save

  end




end
