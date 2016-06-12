class VehicleSlotsController < ApplicationController
  before_action :set_vehicle_slot, only: [:show, :edit, :update, :destroy]

  # GET /vehicle_slots
  # GET /vehicle_slots.json
  def index
    @vehicle_slots = VehicleSlot.all
  end

  # GET /vehicle_slots/1
  # GET /vehicle_slots/1.json
  def show
  end

  # GET /vehicle_slots/new
  def new
    @vehicle_slot = VehicleSlot.new
  end

  # GET /vehicle_slots/1/edit
  def edit
  end

  # POST /vehicle_slots
  # POST /vehicle_slots.json
  def create
    @vehicle_slot = VehicleSlot.new(vehicle_slot_params)

    respond_to do |format|
      if @vehicle_slot.save
        format.html { redirect_to @vehicle_slot, notice: 'Vehicle slot was successfully created.' }
        format.json { render :show, status: :created, location: @vehicle_slot }
      else
        format.html { render :new }
        format.json { render json: @vehicle_slot.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vehicle_slots/1
  # PATCH/PUT /vehicle_slots/1.json
  def update
    respond_to do |format|
      if @vehicle_slot.update(vehicle_slot_params)
        format.html { redirect_to @vehicle_slot, notice: 'Vehicle slot was successfully updated.' }
        format.json { render :show, status: :ok, location: @vehicle_slot }
      else
        format.html { render :edit }
        format.json { render json: @vehicle_slot.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vehicle_slots/1
  # DELETE /vehicle_slots/1.json
  def destroy
    @vehicle_slot.destroy
    respond_to do |format|
      format.html { redirect_to vehicle_slots_url, notice: 'Vehicle slot was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vehicle_slot
      @vehicle_slot = VehicleSlot.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vehicle_slot_params
      params.require(:vehicle_slot).permit(:vehicle_id, :hp, :character_id, :ship_id)
    end
end
