class VehicleAttachmentsController < ApplicationController
  before_action :set_vehicle_attachment, only: [:show, :edit, :update, :destroy]

  # GET /vehicle_attachments
  # GET /vehicle_attachments.json
  def index
    @vehicle_attachments = VehicleAttachment.all
  end

  # GET /vehicle_attachments/1
  # GET /vehicle_attachments/1.json
  def show
  end

  # GET /vehicle_attachments/new
  def new
    @vehicle_attachment = VehicleAttachment.new
  end

  # GET /vehicle_attachments/1/edit
  def edit
  end

  # POST /vehicle_attachments
  # POST /vehicle_attachments.json
  def create
    @vehicle_attachment = VehicleAttachment.new(vehicle_attachment_params)

    respond_to do |format|
      if @vehicle_attachment.save
        format.html { redirect_to @vehicle_attachment, notice: 'Vehicle attachment was successfully created.' }
        format.json { render :show, status: :created, location: @vehicle_attachment }
      else
        format.html { render :new }
        format.json { render json: @vehicle_attachment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vehicle_attachments/1
  # PATCH/PUT /vehicle_attachments/1.json
  def update
    respond_to do |format|
      if @vehicle_attachment.update(vehicle_attachment_params)
        format.html { redirect_to @vehicle_attachment.passengerride, notice: 'Post attachment was successfully updated.' }
      end
    end
  end

  # DELETE /vehicle_attachments/1
  # DELETE /vehicle_attachments/1.json
  def destroy
    @vehicle_attachment.destroy
    respond_to do |format|
      format.html { redirect_to vehicle_attachments_url, notice: 'Vehicle attachment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vehicle_attachment
      @vehicle_attachment = VehicleAttachment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vehicle_attachment_params
      params.require(:vehicle_attachment).permit(:passengerride_id, :avatar)
    end
end
