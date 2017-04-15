class WorkExperienceController < ApplicationController
  def new
    @work = WorkExperience.new
  end

  def create
    @work = WorkExperience.new(user_params)

    if @work.save
      flash[:notice] = 'Successfully created work experiences.'
      redirect_to 'profile'
    else
      render :new
    end
  end

  def show
    @work = WorkExperience.find(params[:id])
  end
end
