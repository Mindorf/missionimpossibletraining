class ProfileController < ApplicationController
  def index
  	@user = unless params[:id].nil? then User.find(params[:id]) else session[:user] end
  end

  def workouts
  end

  def goals
  end
end
