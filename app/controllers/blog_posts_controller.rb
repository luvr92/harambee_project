class BlogPostsController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @blog_posts = BlogPost.all
  end

  def show
    @blog_post = BlogPost.find(params[:id])
  end

  def new
    @blog_post = BlogPost.new
  end

  def create
    @blog_post = BlogPost.create(blog_post_params)
    if @blog_post.save
      redirect_to root_path, :alert => 'Thank you. Your application has been received.'
    else
      render :new
    end
  end

  private

  def blog_post_params
    params.require(:blog_post).permit(:title, :content, :photo, :photo_cache)
  end
end
