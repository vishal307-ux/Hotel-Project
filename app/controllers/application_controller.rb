class ApplicationController < ActionController::Base
   before_action :authenticate_user!
   layout :get_layout

	def get_layout
		if current_user.present?
		   current_user.user_type == 1 ? "admin" : "user"
		else
			"auth"
		end
	end
end
