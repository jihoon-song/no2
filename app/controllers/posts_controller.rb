class PostsController < ApplicationController
	before_action :authenticate_user!
	def show
		@posts = Post.all
	end

	def new
		
	end

	def write
		@post = Post.new
		@post.user_id = params[:id]
		@post.title = params[:title]
		@post.content = params[:content]
		@post.save
		redirect_to controller: "posts" ,action: "show"
	end

	def my_posts
		@posts = Post.find[:]
	end
end
