class StaticPagesController < ApplicationController
  def home
    if logged_in?
      @qualification = current_user.qualifications.build if logged_in?
      @license = current_user.licenses.build if logged_in?
      @work_experience = current_user.work_experiences.build if logged_in?
      @feed_items = current_user.feed.paginate(page: params[:page])
      @work_items = current_user.work.paginate(page: params[:page])
      @license_items = current_user.license.paginate(page: params[:page])
    end
  end

  def about
  end

  def contact
  end
end
