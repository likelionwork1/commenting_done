class CommentsController < ApplicationController
    def create
        @comment = Comment.new
        @comment.user = params[:comment][:user]
        @comment.memo = params[:comment][:memo]
        @comment.post_id = params[:post_id]
        @comment.save
        
        redirect_to request.referrer
    end
    
    def destroy
        @post = Post.find(params[:post_id])
        @comments = @post.comments
        @comments.find(params[:id]).destroy
        
        redirect_to request.referrer
    end
end
