class PagesController < ApplicationController

  def home
    @students = Match.where(active: true).count
    @profile = current_user.profile
  end


end
