class FeaturedUsersController < ApplicationController
  def index
    @users = User.limit(9)
  end

  def show
    @user = User.find(params[:id])
    @hash = Gmaps4rails.build_markers(@user) do |user, marker|
      marker.lat user.latitude
      marker.lng user.longitude
    end
  end
end
