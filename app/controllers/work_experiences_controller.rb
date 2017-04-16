class WorkExperiencesController < ApplicationController
  before_action :logged_in_user, only: [:create, :destroy]
  before_action :correct_user,   only: :destroy

  def create
    @work_experience = current_user.work_experiences.build(work_experience_params)

    if @work_experience.save
      flash[:success] = "Work Experience created!"
      redirect_to root_url
    else
      @work_items = []
      render 'static_pages/home'
    end
  end

  def destroy
    @work_experience.destroy
    flash[:success] = "License deleted"
    redirect_to request.referrer || root_url
  end

  private

    def work_experience_params
      params.require(:work_experience).permit(:company, :job, :summary, :date_started, :date_finished)
    end

    def correct_user
      @work_experience = current_user.work_experiences.find_by(id: params[:id])
      redirect_to root_url if @work_experience.nil?
    end
end
