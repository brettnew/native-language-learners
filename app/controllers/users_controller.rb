class UsersController < ApplicationController
  def index
    @users = User.limit(9)
  end

  def show
    @user = User.find(current_user.id)
    @hash = Gmaps4rails.build_markers(@user) do |user, marker|
      marker.lat user.latitude
      marker.lng user.longitude
    end
  end

  def new
    @user = User.new(user_params)
  end

  def create
    @native_language = NativeLanguage.find(4)
    @user = @native_language.users.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to user_steps_path
    else
      render :new
    end
  end

  def edit
    @user = User.find(current_user.id)
  end

  def update
    @user = User.find(current_user.id)
    @user.update(user_params)
    respond_to do |format|
      format.html {redirect_to :back}
      format.js
    end
  end

private
  def user_params
    params.require(:user).permit(:email, :first_name, :last_name, :password, :password_confirmation)
  end
end
