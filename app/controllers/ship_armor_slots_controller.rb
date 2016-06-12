class ShipArmorSlotsController < ApplicationController
  before_action :set_ship_armor_slot, only: [:show, :edit, :update, :destroy]

  # GET /ship_armor_slots
  # GET /ship_armor_slots.json
  def index
    @ship_armor_slots = ShipArmorSlot.all
  end

  # GET /ship_armor_slots/1
  # GET /ship_armor_slots/1.json
  def show
  end

  # GET /ship_armor_slots/new
  def new
    @ship_armor_slot = ShipArmorSlot.new
  end

  # GET /ship_armor_slots/1/edit
  def edit
  end

  # POST /ship_armor_slots
  # POST /ship_armor_slots.json
  def create
    @ship_armor_slot = ShipArmorSlot.new(ship_armor_slot_params)

    respond_to do |format|
      if @ship_armor_slot.save
        format.html { redirect_to @ship_armor_slot, notice: 'Ship armor slot was successfully created.' }
        format.json { render :show, status: :created, location: @ship_armor_slot }
      else
        format.html { render :new }
        format.json { render json: @ship_armor_slot.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ship_armor_slots/1
  # PATCH/PUT /ship_armor_slots/1.json
  def update
    respond_to do |format|
      if @ship_armor_slot.update(ship_armor_slot_params)
        format.html { redirect_to @ship_armor_slot, notice: 'Ship armor slot was successfully updated.' }
        format.json { render :show, status: :ok, location: @ship_armor_slot }
      else
        format.html { render :edit }
        format.json { render json: @ship_armor_slot.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ship_armor_slots/1
  # DELETE /ship_armor_slots/1.json
  def destroy
    @ship_armor_slot.destroy
    respond_to do |format|
      format.html { redirect_to ship_armor_slots_url, notice: 'Ship armor slot was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ship_armor_slot
      @ship_armor_slot = ShipArmorSlot.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ship_armor_slot_params
      params.require(:ship_armor_slot).permit(:ship_armor_id, :ship_id)
    end
end
