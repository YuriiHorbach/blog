class PostsController < ApplicationController

	before_action :set_post, only:[:show, :edit, :update, :destroy]

	def index
		@posts = Post.all
	end

	def show
	end

	def new
		@post = Post.new
	end

	def create
		@post = Post.new(post_params)
		if @post.save
			redirect_to @post, success: 'Article successfully created'
		else
			render :new, danger: 'Article not created'
		end
	end

	def edit
	end

	def update
		if @post.update_attributes(post_params)
			redirect_to @post, success: 'Article updated successfully'
		else
			render :edit, danger: 'Article not updated'	
		end
	end

	def destroy
		@post.destroy
		redirect_to posts_path, success: 'Article deleted successfully'
		
	end

	private

	def post_params
		params.require(:post ).permit(:title, :summary, :body, :image, :text, :all_tags)
	end

	def set_post
		@post = Post.find(params[:id])
	end

end
