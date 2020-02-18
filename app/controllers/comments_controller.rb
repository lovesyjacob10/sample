class CommentsController < ApplicationController

	def new
		@comments = Comment.new
	end

	def create
		@comment = Comment.new(params.require(:comment)require(:comment))
		@comment.save
		redirect_to '/tweets/#{@tweet.id}'
	end
end
