class BlogPostsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ]

  def index
    @blog_posts = BlogPost.all.order(created_at: :desc).first(20)
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
      redirect_to root_path, :alert => 'Thank you. Your Post has been created.'
    else
      render :new
    end
  end

  private

  def blog_post_params
    params.require(:blog_post).permit(:title, :content, :photo, :photo_cache)
  end
end
