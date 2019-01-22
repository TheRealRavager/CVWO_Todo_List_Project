class TasksController < ApplicationController
	def index
		def index
			@tasks = Task.all
		end
  end

	def new
		@task = Task.new
	end
	
	def create
		#send send task to database then throw the user back to the all tasks page.
	end
end
