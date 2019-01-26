class SessionsController < ApplicationController
  def new
  end

	def create
		user = User.find_by_username(params[:username])
		#if no user found, user will return nil (falsey value), thus short circuiting the conditional before .authenticate is called
		if user && user.authenticate(params[:password])
			session[:user_id] = user.id
			#flash.notice tells the user login is succesful
			redirect_to :tasks, notice: 'Login Successful'
		else
			flash.alert = 'Wrong username or password!'
			render 'new'
		end
  end

	def destroy
		session[:user_id] = nil
		redirect_to root_path, notice: 'Logged Out, Goodbye!'
  end
end
