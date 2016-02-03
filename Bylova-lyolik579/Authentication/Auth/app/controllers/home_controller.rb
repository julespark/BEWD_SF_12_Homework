class HomeController < ApplicationController

	def index
		if user_signed_in?
			redirect to :controller => 'loggedin', :action => 'index'
		end
	end
end
