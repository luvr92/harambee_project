class DiaryPostsController < ApplicationController
  skip_before_action :authenticate_user!

  def index
  end

  def show
  end

  def new
    @diary_post = DiaryPost.new
  end

  def create
    @diary_post = DiaryPost.create(diaryg_post_params)
    if @blog_post.save
      redirect_to root_path, :alert => 'Thank you. Your application has been received.'
    else
      render :new
    end
  end

  private

  def diary_post_params
    params.require(:diary_post).permit(:title, :content, :photo, :photo_cache)
  end
end
