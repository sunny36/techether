class RegistrationsController < Devise::RegistrationsController
  private
  def sign_up_params
  params.require(:user).permit( :name, :email, :password,:password_confirmation)
  end
  def account_update_params
    # For updates we make sure to let the subject ID pass through or the form will
    # generate a new company every time we edit our details
    params.require(:user).permit(:name, :email, :image, :password, :password_confirmation, :current_password,
    subject_attributes: [:id,:name])
  end
end