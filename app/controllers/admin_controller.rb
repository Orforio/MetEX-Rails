class AdminController < ApplicationController
	before_action :restrict_to_development
	
	protected
		def restrict_to_development
			head(:not_found) unless Rails.env.development?
		end	
end