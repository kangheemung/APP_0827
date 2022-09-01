class PostsController < ApplicationController
  def index
    @post=Post.new
    @posts=Post.all
 end
  def show
  end
  def create
     post = Post.new(post_params)
     post.user_id= session[:user_id]
      if post.save
        session[:user]
        redirect_to root_path
      else
        render :new
      end
  end
  private
  def post_params
       params.require(:post).permit(:title, :content)
  end
end
