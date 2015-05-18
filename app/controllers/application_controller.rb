class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception



def last_dream
	Dream.where( user_id: current_user.id ).last
end

def after_sign_in_path_for(resource)
    if last_dream == nil
      root_path
    else
      "/dreams/#{last_dream.id}"
    end
  end
end

 
