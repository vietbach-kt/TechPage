class CommentsController < ApplicationController
  def create
    if user_signed_in?
      @micropost = Micropost.find params[:micropost_id]
      @comment = @micropost.comments.build comment_params
      respond_to do |format|
        if @comment.save
          format.html{redirect_to wru_forum_path, notice: "create successful micropost"}
          format.js
        else
          format.html{redirect_to root_path, notice: "create fail micropost"}
          format.js
        end
      end
    else
      redirect_to root_path
    end
  end
  def update
  end
  def destroy
  end
  private 
  def comment_params
    params.require(:comment).permit :content, :user_id
  end
end
