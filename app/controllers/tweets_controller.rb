class TweetsController < ApplicationController

	def index
		@tweets = Tweet.all
	end

	def new
		@tweet = Tweet.new

	end

	def create
		@tweet = Tweet.new(params.require(:tweet).permit(:title,:description))
		@tweet.save
		redirect_to '/tweets'
	end 

	# def new_comment
	# 	@comment = Comment.new
	# 	# @comment = Comment.new(params.require(:comment).permit(:comment))
	# 	# @comment.save
	# end


	# def new_comment
	# 	@comment = Comment.new
	# end

	# def create_comment
	# 	@comment = Comment.new(params.require(:comment).permit(:comment))
	# 	@comment.save
	# 	redirect_to '/tweets/#{@tweet.id}'

	# end


	def show
		@tweet = Tweet.find(params[:id])
		# @comment = Comment.new
	end

	def edit
		@tweet = Tweet.find(params[:id])
	end

	def update
		@tweet = Tweet.find(params[:id])
		@tweet.update(title: params[:tweet][:title], description: params[:tweet][:description])
		redirect_to '/tweets'
		
	end

	def destroy
		@tweet = Tweet.find(params[:id])
		# p "TEST DELETE"
		@tweet.destroy
		redirect_to '/tweets'
	end
end
