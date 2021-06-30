class PostsController < ApplicationController
  def index
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.create(post_params)
   redirect_to root_path
  end

  def show
  end

  def edit
  end

  def update
    @post.update(post_params)
    if @post.save
      redirect_to post_path(@post)
    else
      render :edit
    end
  end

  def destroy
    @post.destroy
    redirect_to root_path
  end

  # def search
  # end

  private

  def post_params
    params.require(:post).permit(:text, :image).merge(user_id: current_user.id)
  end

  def set_post
    @post = Post.find(params[:id])
  end
end
