class PostsController < ApplicationController
	before_action :authenticate_user!
	def show
		# post를 역순으로 가져 옴 
		@posts = Post.all.reverse
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
	end


	def write
		@post = Post.new
		@post.user_id = params[:id]
		@post.title = params[:title]
		@post.content = params[:content]
		@post.background = params[:image_file]
		@post.save
		redirect_to controller: "posts" ,action: "show"
	end

	def my_posts
		@current_user = User.find(params[:id])
	end
end
