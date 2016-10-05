class UserStepsController < ApplicationController
  include Wicked::Wizard
  steps :account, :personal, :native_language, :language

  def show
    @user = current_user
    render_wizard
  end

  def update
    @user = current_user
    user_params[:status] = step
    user_params[:status] = 'active' if step == steps.last
    @user.attributes = (user_params)
    render_wizard @user
  end

  private
  def user_params
    params.require(:user).permit(:email, :first_name, :last_name, :city, :state, :zipcode, :bio, :gender, :password, :password_confirmation, :image, :status, :native_language_id, :learn_language_ids => [])
  end

  def redirect_to_finish_wizard(options = nil)
    redirect_to @user, notice: "Thank you for signing up!"
  end
end
