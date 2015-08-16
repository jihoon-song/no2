class IndexController < ApplicationController
	def index
	end

	def timer
		@current_time = Time.zone.now
	end
end
