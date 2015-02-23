class PostsController < ApplicationController

  def index
    @author = Author.find_by_id(params[:author_id])
    @posts = @author.posts
  end

  def new
    @author = Author.find_by_id(params[:author_id])
    @post = Post.new
    # @author = @post.author_id
  end

  def show
    @post = Post.find_by_id(params[:id])
    @author = @post.author
  end

  def edit
    @post = Post.find_by_id(params[:id])
    @author = @post.author
  end

  def create
    @author = Author.find_by_id(params[:author_id])
    @post = Post.new post_params
    if @post.save
      redirect_to author_posts_path, notice: "Post added!"
    else
      render :new
    end
  end

  def update
    @post = Post.find_by_id(params[:id])
    @post.update_attributes post_params
    @author = @post.author_id
    if @post.save
      redirect_to author_posts_path(@post.author_id), notice: "Post updated!"
    else
      render :edit
    end
  end

  def destroy
    @post = Post.find_by_id(params[:id])
    @post.destroy
    redirect_to author_posts_path(@post.author_id), notice: "You have successfully deleted this post."
  end

  private
  def post_params
    params.require(:post).permit(:title, :body, :category, :author_id)
  end

end
