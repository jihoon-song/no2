class IndexController < ApplicationController
	def index
	end
	
	def timer
		@current_time = Time.now
	end
end
