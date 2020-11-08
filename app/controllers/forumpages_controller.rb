class ForumpagesController < ApplicationController
    layout "layouts/forum/application"
    def home
        @micropost = current_user.microposts.build
        @list_microposts = Micropost.all
    end
end
