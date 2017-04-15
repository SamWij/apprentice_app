class QualificationsController < ApplicationController
  before_action :logged_in_user, only: [:create, :destroy]
  before_action :correct_user,   only: :destroy
  def create
    @qualification = current_user.qualifications.build(qualification_params)
    if @qualification.save
      flash[:success] = "Qualification created!"
      redirect_to root_url
    else
      @feed_items = []
      render 'static_pages/home'
    end
  end

  def destroy
    @qualification.destroy
    flash[:success] = "Qualification deleted"
    redirect_to request.referrer || root_url
  end
  private

    def qualification_params
      params.require(:qualification).permit(:school, :name, :completed)
    end

    def correct_user
      @qualification = current_user.qualifications.find_by(id: params[:id])
      redirect_to root_url if @qualification.nil?
    end
end
