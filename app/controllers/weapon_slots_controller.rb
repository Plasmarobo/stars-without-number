class WeaponSlotsController < ApplicationController
  before_action :set_weapon_slot, only: [:show, :edit, :update, :destroy]

  # GET /weapon_slots
  # GET /weapon_slots.json
  def index
    @weapon_slots = WeaponSlot.all
  end

  # GET /weapon_slots/1
  # GET /weapon_slots/1.json
  def show
  end

  # GET /weapon_slots/new
  def new
    @weapon_slot = WeaponSlot.new
  end

  # GET /weapon_slots/1/edit
  def edit
  end

  # POST /weapon_slots
  # POST /weapon_slots.json
  def create
    @weapon_slot = WeaponSlot.new(weapon_slot_params)

    respond_to do |format|
      if @weapon_slot.save
        format.html { redirect_to @weapon_slot, notice: 'Weapon slot was successfully created.' }
        format.json { render :show, status: :created, location: @weapon_slot }
      else
        format.html { render :new }
        format.json { render json: @weapon_slot.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /weapon_slots/1
  # PATCH/PUT /weapon_slots/1.json
  def update
    respond_to do |format|
      if @weapon_slot.update(weapon_slot_params)
        format.html { redirect_to @weapon_slot, notice: 'Weapon slot was successfully updated.' }
        format.json { render :show, status: :ok, location: @weapon_slot }
      else
        format.html { render :edit }
        format.json { render json: @weapon_slot.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /weapon_slots/1
  # DELETE /weapon_slots/1.json
  def destroy
    @weapon_slot.destroy
    respond_to do |format|
      format.html { redirect_to weapon_slots_url, notice: 'Weapon slot was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_weapon_slot
      @weapon_slot = WeaponSlot.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def weapon_slot_params
      params.require(:weapon_slot).permit(:weapon_id, :ammo_slot_id, :character_id, :vehicle_id, :item_id)
    end
end
