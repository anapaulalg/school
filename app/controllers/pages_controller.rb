class PagesController < ApplicationController

  def home
    @students = Match.where(active: true).count
    @profile = current_user.profile
    @allstudents = Match.all.to_hash
  end


end
