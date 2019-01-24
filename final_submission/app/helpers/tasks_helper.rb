module TasksHelper
	def current_user
		#if no user, dont find user
		User.find(session[:user_id]) if session[:user_id]
	end
end
