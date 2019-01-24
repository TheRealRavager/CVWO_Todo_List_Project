class SessionsController < ApplicationController
  def new
  end

	def create
		user = User.find_by_username(params[:username])
		#if no user found, user will return nil (falsey value), thus short circuiting the conditional before .authenticate is called
		if user && user.authenticate(params[:password])
			session[:user_id] = user.id
			redirect_to :tasks
		else
			render 'new'
		end
  end

	def destroy
		session[:user_id] = nil
		redirect_to root_path
  end
end
