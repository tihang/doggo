class PostsController < ApplicationController
  before_action :set_post, only: [:edit, :update, :show, :destroy]

  def new
    @post = Post.new
  end

  def create
    # @post = Post.new(post_params)
    # @post.user_id = current_user.id
    # Refactor
    @post = current_user.posts.build(post_params)

    if @post.save
      redirect_to dashboard_index_path, notice: "Post was successfully created."
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @post.update(post_params)
      redirect_to dashboard_index_path, notice: "Your post was successfully updated!"
    else
      render :edit
    end
  end

  def destroy
    @post.destroy
    redirect_to dashboard_index_path, notice: "Post successfully deleted."
  end

  private

  def set_post
    @post = current_user.posts.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :body)
  end
end
