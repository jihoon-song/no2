class IndexController < ApplicationController
	def index
	end

	def post_list
	end
	
	def timer
		@current_time = Time.zone.now
	end
end
