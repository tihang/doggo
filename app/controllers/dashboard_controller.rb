class DashboardController < ApplicationController
    before_action :authenticate_user!
    before_action :set_user, only: [:edit]

    def index
        @pagy, @posts = pagy(current_user.posts.order("posts.created_at DESC"), items: 6, size: [1,1,1,1])
    end
end
