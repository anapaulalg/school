class PagesController < ApplicationController

  def home
    @students = Match.where(active: true).count
    @profile = current_user.profile
    @student_id = Random.rand(1..@students)
    @student = Match.where(student_id: @student_id).first
  end


end
