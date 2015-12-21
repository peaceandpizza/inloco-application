class RegistrationsController < Devise::RegistrationsController
  protected

  def after_inactive_sign_up_path_for(resource)
    flash[:disclaimer] = t(:confirmation_disclaimer)
    return new_user_session_path
  end
end