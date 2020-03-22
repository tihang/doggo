class DashboardController < ApplicationController
    before_action :authenticate_user!
    before_action :set_user, only: [:edit]

    def index
        @posts = current_user.posts
    end
end
