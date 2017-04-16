class LicensesController < ApplicationController
  before_action :logged_in_user, only: [:create, :destroy]
  before_action :correct_user,   only: :destroy
  def create
    @license = current_user.licenses.build(license_params)
    if @license.save
      flash[:success] = "License created!"
      redirect_to root_url
    else
      @license_items = []
      render 'static_pages/home'
    end
  end

  def destroy
    @license.destroy
    flash[:success] = "License deleted"
    redirect_to request.referrer || root_url
  end
  private

    def license_params
      params.require(:license).permit(:name, :number, :expiry)
    end

    def correct_user
      @license = current_user.licenses.find_by(id: params[:id])
      redirect_to root_url if @license.nil?
    end
end
