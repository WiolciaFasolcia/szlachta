class BaseController < ApplicationController
	before_action :authenticate_user!


	#redirect_to users_path
 def after_sign_in_path_for(resource)
  session[:previous_url] || users_path
end
end
