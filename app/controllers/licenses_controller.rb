class LicensesController < ApplicationController
  def new
    @license = License.new
  end

  def create
    @license = License.new(user_params)

    if @license.save
      flash[:notice] = 'Successfully created a license.'
      redirect_to 'profile'
    else
      render :new
    end
  end

  def show
    @license = License.find(params[:id])
  end
end
