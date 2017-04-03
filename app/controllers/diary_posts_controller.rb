class DiaryPostsController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @diary_posts = DiaryPost.all
  end

  def show
    @diary_post = DiaryPost.find(params[:id])
  end

  def new
    @diary_post = DiaryPost.new
  end

  def create
    @diary_post = DiaryPost.create(diary_post_params)
    if @diary_post.save
      redirect_to root_path, :alert => 'Thank you. Your Post has been created.'
    else
      render :new
    end
  end

  private

  def diary_post_params
    params.require(:diary_post).permit(:title, :content, :photo, :photo_cache)
  end
end
