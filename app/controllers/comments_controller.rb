class CommentsController < ApplicationController
    def create
        #render palin: params
        @gallery = Gallery.find(params[:gallery_id])
        @comment = @gallery.comments.create(comment_params)
        redirect_to gallery_path(@gallery)
    end
    
    def destroy
        @gallery = Gallery.find(params[:gallery_id])
        @comment = @gallery.comments.find(params[:id])
        @comment.destroy
        redirect_to gallery_path(@gallery)
    end
    
private
    def comment_params
        params.require(:comment).permit(:commenter, :body)
    end
end