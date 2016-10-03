class NativeLanguagesController < ApplicationController
  def edit
    @user = User.find(current_user.id)
    @native_languages = NativeLanguage.all
  end

  def update
end

private
  def native_language_params
    params.require(:native_language).permit(:name)
  end
end
