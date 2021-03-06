class RecommendedUsersController < ApplicationController
  def index
    @user = User.find(current_user.id)
    @users = User.all_except(current_user)
  end

  def show
    @user = User.find(params[:id])
    @hash = Gmaps4rails.build_markers(@user) do |user, marker|
      marker.lat user.latitude
      marker.lng user.longitude
    end
  end
end
