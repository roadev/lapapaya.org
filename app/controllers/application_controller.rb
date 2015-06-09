class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception



def last_dream
  if user_signed_in?
	Dream.where( user_id: current_user.id ).last
else
  redirect_to "users/sign_up"
end
end

def after_sign_in_path_for(resource)
    if last_dream == nil
      new_dream_path
    else
      "/dreams/#{last_dream.id}"
    end
  end
end

 
