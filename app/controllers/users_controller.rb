class UsersController < ApplicationController
  before_action :load_user
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
    @wizard = ModelWizard.new(User, session, params).start
    @user = @wizard.object
  end

  def create
    session[:user_params].deep_merge!(params[:user]) if params[:user]
    @user = User.new(session[:user_params])
    @user.current_step = session[:user_step]
    if @user.valid?
      if params[:back_button]
        @user.previous_step
      elsif @user.last_step?
        @user.save if @user.all_valid?
      else
        @user.next_step
      end
      session[:user_step] = @user.current_step
    end
    if @user.new_record?
      render "new"
    else
      session[:user_step] = session[:user_params] = nil
      session[:user_id] = @user.id
      redirect_to @user, notice: "Thank you for signing up!"
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
