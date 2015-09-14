class ApplicationController < ActionController::Base
	# Prevent CSRF attacks by raising an exception.
	# For APIs, you may want to use :null_session instead.
	protect_from_forgery with: :exception
	
	protected
		def restrict_to_development
			head(:not_found) unless Rails.env.development?
		end
end
