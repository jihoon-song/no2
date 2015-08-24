class PostsController < ApplicationController
	before_action :authenticate_user!
	def index
		# post를 역순으로 가져 옴 
		@posts = Post.all
		@posts = @posts.sort_by { |e| e.num_comment }.reverse
	end

	def new
		@post = Post.new
	end

	def comment
		comment = Comment.new
		comment.content = params[:comment]
		comment.user_id = params[:id]
		comment.post_id = params[:post_id]
		comment.save

		post = Post.find(params[:post_id])
		post.num_comment += 1
		post.save

		redirect_to controller: "posts" ,action: "index"
	end

	def my_posts
		@current_user = User.find(params[:id])
	end

	def create
		@post = Post.new(post_params)
		@post.save
		redirect_to controller: "posts" ,action: "index"
	
	end

	private

	def post_params
		params.require(:post).permit(:title, :content, :user_id, :background)
	end
end
