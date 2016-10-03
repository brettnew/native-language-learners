class Users::BuildController < ApplicationController
  include Wicked::Wizard
  steps :account, :personal

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

  def redirect_to_finish_wizard(options = nil)
    redirect_to edit_native_language_path , notice: "Thank you for signing up!"
  end
end
