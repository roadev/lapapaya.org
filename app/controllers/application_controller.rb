class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << :username
    devise_parameter_sanitizer.for(:sign_up) << :country
    devise_parameter_sanitizer.for(:sign_up) << :region
    devise_parameter_sanitizer.for(:sign_up) << :city
    devise_parameter_sanitizer.for(:sign_up) << :born_date
    devise_parameter_sanitizer.for(:sign_up) << :website
    devise_parameter_sanitizer.for(:sign_up) << :facebook
    devise_parameter_sanitizer.for(:sign_up) << :twitter
    devise_parameter_sanitizer.for(:sign_up) << :name
    devise_parameter_sanitizer.for(:sign_up) << :lastname
    devise_parameter_sanitizer.for(:sign_up) << :avatar
    #devise_parameter_sanitizer.for(:sign_up) << :select_type
    devise_parameter_sanitizer.for(:account_update) << :name
    devise_parameter_sanitizer.for(:account_update) << :lastname
    devise_parameter_sanitizer.for(:account_update) << :avatar
    devise_parameter_sanitizer.for(:sign_up) << :country
    devise_parameter_sanitizer.for(:sign_up) << :region
    devise_parameter_sanitizer.for(:sign_up) << :city
    #devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:name, :lastname, :avatar) }
  end

  def last_dream
    Dream.where( user_id: current_user.id ).last
  end

  def after_sign_in_path_for(resource)
    if last_dream == nil
      new_dream_path
    else
      "/dreams/#{last_dream.id}"
    end
  end
end
