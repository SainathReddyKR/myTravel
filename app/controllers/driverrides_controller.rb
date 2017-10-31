class DriverridesController < ApplicationController

  before_action :para_driverride, only: [:edit, :update, :show]
  load_and_authorize_resource :except => :create

  def index
    @q = Driverride.ransack(params[:q])
    @q.sorts = ['created_at desc'] if @q.sorts.empty?
    @driverrides = @q.result.paginate(page: params[:page], per_page: 10)
  end

  def new
    @driverride = Driverride.new
    @post_attachment = @driverride.post_attachments.build
  end

  def show
    @post_attachments = @driverride.post_attachments.all
    @requestfordm = Requestfordm.new(driverride_id: @driverride.id)
  end

  def edit
  end

  def create

    @driverride = Driverride.new(driverride_params)
    @driverride.user = current_user
    if @driverride.save
      params[:post_attachments]['avatar'].each do |a|
        @post_attachment = @driverride.post_attachments.create!(:avatar => a)
      end
      flash[:success] = 'Ad was successfully posted.'
      redirect_to driverride_path(@driverride)
    else
      render 'new'
    end
  end

  def update

    @driverride.user = current_user
    if @driverride.update(driverride_params)
      flash[:success] = 'Ride was successfully updated'
      redirect_to driverride_path(@driverride)
    else
      render 'edit'
    end
  end


  def destroy
    @driverride = Driverride.find(params[:id])
    @driverride.destroy
    flash[:danger] = "Ride has been deleted successfully"
    redirect_to driverrides_path
  end


  private

  def para_driverride
    @driverride = Driverride.find(params[:id])
  end

  private

  def driverride_params
    params.require(:driverride).permit(:name, :rent, :contract, :bedroom, :bathroom, :kitchen, :swimmingpool, :elevator, :parking, :address, :area, :security, :balcony, :gym, :kids, :additionalinfo, :eleven, :bigc, :familymart, :tesco, :tops, :lawson, :makro, post_attachments_attributes: [:id, :driverride_id, :avatar])
  end

end