class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  #authenthicate_user
#  def after_sign_in_path_for(resource)
#  session["user_index"]
#end
# def after_sign_in_path_for(resource)
#   session[:previous_url] || users_path
# end
end
