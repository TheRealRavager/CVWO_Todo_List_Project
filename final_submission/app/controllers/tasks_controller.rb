class TasksController < ApplicationController
	include TasksHelper
	def index
		@tasks = current_user.tasks.all #returns an active record relation
	end

	def show
		@task = Task.find(params[:id])
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

	def edit
		@task = Task.find(params[:id]) #find the specific task with that id
	end

	def update
		@task = Task.find(params[:id])
		if @task.update(task_params)
			redirect_to tasks_path
		else
			render 'edit'
		end
	end

	def destroy
		@task = Task.find(params[:id])
		@task.destroy
		redirect_to tasks_path
	end

	private #prevents params other than those listed in permit from being passed (security issue)
	def task_params
		params.require(:task).permit(:title, :details, :completed)
	end
end