class PassengerridesController < ApplicationController

  before_action :para_passengerride, only: [:edit, :update, :show]
  load_and_authorize_resource :except => :create

  def index
    @q = Passengerride.ransack(params[:q])
    @q.sorts = ['created_at desc'] if @q.sorts.empty?
    @passengerrides = @q.result.paginate(page: params[:page], per_page: 10)
  end

  def new
    @passengerride = Passengerride.new
    @vehicle_attachment = @passengerride.vehicle_attachments.build
  end

  def show
    @vehicle_attachments = @passengerride.vehicle_attachments.all
    @requestforpm = Requestforpm.new(passengerride_id: @passengerride.id)
  end

  def edit
  end

  def create

    @passengerride = Passengerride.new(passengerride_params)
    @passengerride.user = current_user
    if @passengerride.save
      params[:vehicle_attachments]['avatar'].each do |a|
        @vehicle_attachment = @passengerride.vehicle_attachments.create!(:avatar => a)
      end
      flash[:success] = 'Ad was successfully posted.'
      redirect_to passengerride_path(@passengerride)
    else
      render 'new'
    end
  end

  def update

    @passengerride.user = current_user
    if @passengerride.update(passengerride_params)
      flash[:success] = 'Ad was successfully updated'
      redirect_to passengerride_path(@passengerride)
    else
      render 'edit'
    end
  end


  def destroy
    @passengerride = Passengerride.find(params[:id])
    @passengerride.destroy
    flash[:danger] = "Ad has been deleted successfully"
    redirect_to passengerrides_path
  end


  private

  def para_passengerride
    @passengerride = Passengerride.find(params[:id])
  end

  private

  def passengerride_params
    #params[:passengerride][:ac] = params[:passengerride][:ac].join(', ')
    #params[:passengerride][:tv] = params[:passengerride][:tv].join(', ')
    #params[:passengerride][:music] = params[:passengerride][:music].join(', ')
    #params[:passengerride][:auxcable] = params[:passengerride][:auxcable].join(', ')
    #params[:passengerride][:bluetooth] = params[:passengerride][:bluetooth].join(', ')
    #params[:passengerride][:navigation] = params[:passengerride][:navigation].join(', ')
    #params[:passengerride][:rearbackupcamera] = params[:passengerride][:rearbackupcamera].join(', ')
    #params[:passengerride][:pets] = params[:passengerride][:pets].join(', ')
    #params[:passengerride][:drinking] = params[:passengerride][:drinking].join(', ')
    #params[:passengerride][:eating] = params[:passengerride][:eating].join(', ')
    #params[:passengerride][:smoking] = params[:passengerride][:smoking].join(', ')
    #params[:passengerride][:preview] = params[:passengerride][:preview].join(', ')

    params.require(:passengerride).permit(:vehicle, :seats, :model, :rent, :fuel, :mileage, :title, :additionalinfo, :pickup, :userlocation, :ac, :tv, :music, :auxcable, :bluetooth, :navigation, :rearbackupcamera, :pets, :drinking, :eating, :smoking, vehicle_attachments_attributes: [:id, :passengerride_id, :avatar])
  end

end