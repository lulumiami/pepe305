class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
#   def after_sign_in_path_for(resource)
#   	stored_location_for(resource) || 
#   	if resource.is_a?(User &&) resource.

	def configure_permitted_parameters
		[:sign_up, :account_update].each do |action|
		devise_parameter_sanitizer.for(action).push(:admin)
		end
	end	

	# def after_sign_in_path_for(user)
	# if current_user.admin?
	# 	<%= link_to "Admin Only", new_user_session_path %>
  # do something
# end

end
