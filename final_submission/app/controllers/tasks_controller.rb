class TasksController < ApplicationController
	def index
		@tasks = Task.all #returns an active record relation
	end

	def new
		@task = Task.new
	end
	
	#is called when submit is pressed on form. When submit is pressed, it outputs a hash of parameters included in the form.
	def create
		@task = Task.new(task_params)
		@task.save
		redirect_to tasks_path #redirects user to main task page (tasks#index)
		#TODO send task to database then throw the user back to the all tasks page.
	end

	def edit
		@task = Task.find(params[:id]) #find the specific task with that id
	end

	def update
		@task = Task.find(params[:id])
		@task.update(task_params)
		redirect_to tasks_path
	end

	private #prevents params other than those listed in permit from being passed (security issue)
	def task_params
		params.require(:task).permit(:title, :details)
	end
end