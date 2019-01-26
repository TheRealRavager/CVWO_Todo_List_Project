class TasksController < ApplicationController
	#before any method calls, confirm user is logged in and the user is the correct user (except for main tasks page and creation of new task)
	before_action :confirm_login
	before_action :load_task, :confirm_owner, except: [:index, :new, :create]

	def index
		if check_admin
			@search = Task.search(params[:q])
			@tasks = @search.result(distinct: true)
		else
			@search = current_user.tasks.search(params[:q])
			@tasks = @search.result(distinct: true)
		end
	end

	def show
	end

	def new
		@task = current_user.tasks.build 
	end
	
	#is called when submit is pressed on form. When submit is pressed, it outputs a hash of parameters included in the form.
	def create
		@task = current_user.tasks.build(task_params)
		if params[:cancel] || @task.save #short circuit, if either cancel or save.
			redirect_to tasks_path #redirects user to main task page (tasks#index)
		else
			render 'new'
		end
	end

	def edit
	end

	def update
		if params[:cancel] || @task.update(task_params)
			redirect_to tasks_path
		else
			render 'edit'
		end
	end

	def destroy
		@task.destroy
		redirect_to tasks_path
	end

	# Sorts tasks according to what user specifies in drop down box.
	def sort
	end

	private # Prevents params other than those listed in permit from being passed (security issue)
	def load_task
		@task = Task.find(params[:id])
	end
	
	def task_params
		params.require(:task).permit(:title, :details, :completed, :deadline, :cancel)
	end

	def confirm_login
		unless current_user
			redirect_to root_path, alert: 'You must log in to manage a to do list'
		end
	end

	# Users can only see their own tasks. Admins can see all tasks.
	def confirm_owner
		unless check_admin
			if @task && current_user != @task.user
				redirect_to tasks_path, alert: 'You do not have permission to access that task.'
			end
		end
	end
end