class UserStepsController < ApplicationController
  include Wicked::Wizard
  steps :account, :personal, :native_language, :language

  def show
    @user = current_user
    render_wizard
  end

  def update
    @user = current_user
    @user.attributes = (user_params)
    render_wizard @user
  end

  private
  def user_params
    params.require(:user).permit(:email, :first_name, :last_name, :city, :state, :zipcode, :bio, :gender, :password, :password_confirmation, :image)
  end

  def redirect_to_finish_wizard
    @user = current_user
    redirect_to user_path(@user), notice: "Thank you for signing up!"
  end
end
