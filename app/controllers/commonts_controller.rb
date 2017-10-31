class CommontsController < ApplicationController

  def create
    @driverride = Driverride.find(params[:driverride_id])
    @commont = @driverride.commonts.create(params[:commont].permit(:name, :body))
    redirect_to driverride_path(@driverride)
  end

end
