class CommentsController < ApplicationController
  def create
    @comment = Comment.new
    @comment.article_id = params[:article_id]
    @comment.author_name = params[:comment][:author_name]
    @comment.body = params[:comment][:body]
    @comment.save
    redirect_to article_path(@comment.article_id)
  end
end
