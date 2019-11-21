class CommentsController < ApplicationController
    def new
    @comment = Comment.new
    end
    
    def edit
    @comment = Comment.find(params[:id])
    end
end
