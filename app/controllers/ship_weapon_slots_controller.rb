class ShipWeaponSlotsController < ApplicationController
  before_action :set_ship_weapon_slot, only: [:show, :edit, :update, :destroy]

  # GET /ship_weapon_slots
  # GET /ship_weapon_slots.json
  def index
    @ship_weapon_slots = ShipWeaponSlot.all
  end

  # GET /ship_weapon_slots/1
  # GET /ship_weapon_slots/1.json
  def show
  end

  # GET /ship_weapon_slots/new
  def new
    @ship_weapon_slot = ShipWeaponSlot.new
  end

  # GET /ship_weapon_slots/1/edit
  def edit
  end

  # POST /ship_weapon_slots
  # POST /ship_weapon_slots.json
  def create
    @ship_weapon_slot = ShipWeaponSlot.new(ship_weapon_slot_params)

    respond_to do |format|
      if @ship_weapon_slot.save
        format.html { redirect_to @ship_weapon_slot, notice: 'Ship weapon slot was successfully created.' }
        format.json { render :show, status: :created, location: @ship_weapon_slot }
      else
        format.html { render :new }
        format.json { render json: @ship_weapon_slot.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ship_weapon_slots/1
  # PATCH/PUT /ship_weapon_slots/1.json
  def update
    respond_to do |format|
      if @ship_weapon_slot.update(ship_weapon_slot_params)
        format.html { redirect_to @ship_weapon_slot, notice: 'Ship weapon slot was successfully updated.' }
        format.json { render :show, status: :ok, location: @ship_weapon_slot }
      else
        format.html { render :edit }
        format.json { render json: @ship_weapon_slot.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ship_weapon_slots/1
  # DELETE /ship_weapon_slots/1.json
  def destroy
    @ship_weapon_slot.destroy
    respond_to do |format|
      format.html { redirect_to ship_weapon_slots_url, notice: 'Ship weapon slot was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ship_weapon_slot
      @ship_weapon_slot = ShipWeaponSlot.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ship_weapon_slot_params
      params.require(:ship_weapon_slot).permit(:ship_weapon_id, :ship_id, :ammo_slot_id)
    end
end
