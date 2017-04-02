class InternsController < ApplicationController
  skip_before_action :authenticate_user!

  def new
    @intern = Intern.new
  end

  def create
    @intern = Intern.create(intern_params)
    if @intern.save
      redirect_to root_path, :alert => 'Thank you. Your application has been received.'
    else
      render :new
    end
  end

  private

  def intern_params
    params.require(:intern).permit(:first_name, :last_name, :accepts_treatment, :cv, :cv_cache)
  end
end
