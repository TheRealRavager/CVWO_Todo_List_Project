module ApplicationHelper #makes method available everyhwhere in application
	def current_user
		#if no user, dont find user
		User.find(session[:user_id]) if session[:user_id]
	end

	def check_admin
		current_user.username == 'Admin' if session[:user_id]
	end

	def boot_non_admins
	 redirect_to root_path, alert: 'You are not authrorized to access that page' unless check_admin
	end
end
