class LoggedinController < ApplicationController
	def index
		@listnotdone = Loggedin.where(done: false)
		@listdone = Loggedin.where(done: true)
	end

	def new
		@loggedin = Loggedin.new
	end

	def loggedin_params
		params.require(:loggedin).permit(:name, :done)
	end

	def create
		@loggedin = Loggedin.new(loggedin_params)

		if loggedin.save
			redirect_to loggedin_index_path, :notice => "Your item was added"
		else
			render "new"
		end
	end
end
