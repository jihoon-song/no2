class PostsController < ApplicationController
	def show
		@posts = Post.find(params[:id])
	end

	def new
		@user_id = current_user.id
	end

	def write
		@post = Post.new
		@post.user_id = params[:id]
		@post.title = params[:title]
		@post.content = params[:content]
		@post.save
	end
end
