class PostsController < ApplicationController
	before_action :authenticate_user!
	def show
		@posts = Post.all
	end

	def new
		
	end

	def comment
		comment = Comment.new
		comment.content = params[:comment]
		comment.user_id = params[:id]
		comment.post_id = params[:post_id]
		comment.save

		redirect_to controller: "posts" ,action: "show"
	end

	def like
		post = Post.find(params[:post_id])
		user = params[:id]
		post.who_like << user
		post.likes = post.who_like.count
		post.save

		redirect_to controller: "posts" ,action: "show"
	end


	def write
		@post = Post.new
		@post.user_id = params[:id]
		@post.title = params[:title]
		@post.content = params[:content]
		@post.likes = 0
		@post.save
		redirect_to controller: "posts" ,action: "show"
	end

	def my_posts
	end
end
