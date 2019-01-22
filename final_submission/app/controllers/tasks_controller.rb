class TasksController < ApplicationController
	def index
		def index
			@tasks = Task.all #returns an active record relation
		end
  end

	def new
		@task = Task.new
	end
	
	def create
		#TODO send task to database then throw the user back to the all tasks page.
	end
end
