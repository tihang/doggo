class SearchController < ApplicationController
    before_action :set_post, only: [:show]

    def index
        @pagy, @posts = pagy(Post.all.order("posts.created_at DESC"), items: 8, size: [1,0,0,1])
    end

    def show
        
    end


    private

    def set_post
        @post = Post.find(params[:id])
    end
    
    def search_params
        
    end
end
