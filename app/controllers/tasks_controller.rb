class TasksController < ApplicationController
	include TasksHelper
	before_action :confirm_login
	before_action :load_task, :confirm_owner, except: [:index, :new, :create]

	def index
		@tasks = current_user.tasks.all #returns an active record relation
	end

	def show
	end

	def new
		@task = current_user.tasks.build 
	end
	
	#is called when submit is pressed on form. When submit is pressed, it outputs a hash of parameters included in the form.
	def create
		@task = current_user.tasks.build(task_params)
		if @task.save
			redirect_to tasks_path #redirects user to main task page (tasks#index)
		else
			render 'new'
		end
	end

	def edit #find the specific task with that id
	end

	def update
		if @task.update(task_params)
			redirect_to tasks_path
		else
			render 'edit'
		end
	end

	def destroy
		@task.destroy
		redirect_to tasks_path
	end

	private #prevents params other than those listed in permit from being passed (security issue)
	def load_task
		@task = Task.find(params[:id])
	end
	
	def task_params
		params.require(:task).permit(:title, :details, :completed)
	end

	def confirm_login
		unless current_user
			redirect_to root_path, alert: 'You must log in to manage a to do list'
		end
	end

	def confirm_owner
		if @task && current_user != @task.user
			redirect_to tasks_path, alert: 'You do not have permission to access that task.'
		end
	end
end