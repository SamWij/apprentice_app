class StaticPagesController < ApplicationController
  def home
    if logged_in?
      @qualification = current_user.qualifications.build if logged_in?
      @feed_items = current_user.feed.paginate(page: params[:page])
    end
  end

  def about
  end

  def contact
  end
end
