class VolunteersController < ApplicationController
  skip_before_action :authenticate_user!

  def new
    @volunteer = Volunteer.new
  end

  def create
    @volunteer = Volunteer.create(intern_params)
    if @volunteer.save
      redirect_to root_path, :alert => 'Thank you. Your application has been received.'
    else
      render :new
    end
  end

  private

  def volunteer_params
    params.require(:volunteer).permit(:first_name, :last_name, :accepts_treatment)
  end
end
