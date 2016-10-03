class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(current_user.id)
    @hash = Gmaps4rails.build_markers(@user) do |user, marker|
      marker.lat user.latitude
      marker.lng user.longitude
    end
  end

  def new
    @user = User.new
    # @wizard = ModelWizard.new(User, session, params).start
    # @user = @wizard.object
  end

  def create
    @user = User.new(user_params)
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
    params.require(:user).permit(:email, :first_name, :last_name, :city, :state, :zipcode, :bio, :gender, :password, :password_confirmation, :image)
  end
end
