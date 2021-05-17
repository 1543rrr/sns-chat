class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  
  private
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name,:gender_id,:recruiment_id,:musical_instrument_id, :department_id, :undergraduate_id, :course_id, :self_introduction])
  end  
end
