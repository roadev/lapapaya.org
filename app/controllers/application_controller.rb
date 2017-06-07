class ApplicationController < ActionController::Base

  protect_from_forgery with: :exception

  before_filter :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    params = [:name, :lastname, :username, :phone, :country, :city,
      :born_date, :website, :facebook, :twitter, :avatar]

    devise_parameter_sanitizer.permit(:sign_up, keys: params)
    devise_parameter_sanitizer.permit(:account_update, keys: params)
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
