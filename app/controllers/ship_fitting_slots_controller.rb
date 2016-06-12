class ShipFittingSlotsController < ApplicationController
  before_action :set_ship_fitting_slot, only: [:show, :edit, :update, :destroy]

  # GET /ship_fitting_slots
  # GET /ship_fitting_slots.json
  def index
    @ship_fitting_slots = ShipFittingSlot.all
  end

  # GET /ship_fitting_slots/1
  # GET /ship_fitting_slots/1.json
  def show
  end

  # GET /ship_fitting_slots/new
  def new
    @ship_fitting_slot = ShipFittingSlot.new
  end

  # GET /ship_fitting_slots/1/edit
  def edit
  end

  # POST /ship_fitting_slots
  # POST /ship_fitting_slots.json
  def create
    @ship_fitting_slot = ShipFittingSlot.new(ship_fitting_slot_params)

    respond_to do |format|
      if @ship_fitting_slot.save
        format.html { redirect_to @ship_fitting_slot, notice: 'Ship fitting slot was successfully created.' }
        format.json { render :show, status: :created, location: @ship_fitting_slot }
      else
        format.html { render :new }
        format.json { render json: @ship_fitting_slot.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ship_fitting_slots/1
  # PATCH/PUT /ship_fitting_slots/1.json
  def update
    respond_to do |format|
      if @ship_fitting_slot.update(ship_fitting_slot_params)
        format.html { redirect_to @ship_fitting_slot, notice: 'Ship fitting slot was successfully updated.' }
        format.json { render :show, status: :ok, location: @ship_fitting_slot }
      else
        format.html { render :edit }
        format.json { render json: @ship_fitting_slot.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ship_fitting_slots/1
  # DELETE /ship_fitting_slots/1.json
  def destroy
    @ship_fitting_slot.destroy
    respond_to do |format|
      format.html { redirect_to ship_fitting_slots_url, notice: 'Ship fitting slot was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ship_fitting_slot
      @ship_fitting_slot = ShipFittingSlot.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ship_fitting_slot_params
      params.require(:ship_fitting_slot).permit(:ship_fitting_id, :ship_id)
    end
end
