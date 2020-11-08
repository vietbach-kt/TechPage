class MicropostsController < ApplicationController
  def create
    if user_signed_in?
      @micropost = current_user.microposts.build micropost_params
      respond_to do |format|
        if @micropost.save
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
  def micropost_params
    params.require(:micropost).permit :content
  end
end
