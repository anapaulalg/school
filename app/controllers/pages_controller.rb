class PagesController < ApplicationController

  def home
    @students = Profile.count
    @profile = current_user.profile
    @student_id = Random.rand(1..@students)
    # @student = Profile.where(student_id: @student_id).first
  end


end
