class AmmoSlotsController < ApplicationController
  before_action :set_ammo_slot, only: [:show, :edit, :update, :destroy]

  # GET /ammo_slots
  # GET /ammo_slots.json
  def index
    @ammo_slots = AmmoSlot.all
  end

  # GET /ammo_slots/1
  # GET /ammo_slots/1.json
  def show
  end

  # GET /ammo_slots/new
  def new
    @ammo_slot = AmmoSlot.new
  end

  # GET /ammo_slots/1/edit
  def edit
  end

  # POST /ammo_slots
  # POST /ammo_slots.json
  def create
    @ammo_slot = AmmoSlot.new(ammo_slot_params)

    respond_to do |format|
      if @ammo_slot.save
        format.html { redirect_to @ammo_slot, notice: 'Ammo slot was successfully created.' }
        format.json { render :show, status: :created, location: @ammo_slot }
      else
        format.html { render :new }
        format.json { render json: @ammo_slot.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ammo_slots/1
  # PATCH/PUT /ammo_slots/1.json
  def update
    respond_to do |format|
      if @ammo_slot.update(ammo_slot_params)
        format.html { redirect_to @ammo_slot, notice: 'Ammo slot was successfully updated.' }
        format.json { render :show, status: :ok, location: @ammo_slot }
      else
        format.html { render :edit }
        format.json { render json: @ammo_slot.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ammo_slots/1
  # DELETE /ammo_slots/1.json
  def destroy
    @ammo_slot.destroy
    respond_to do |format|
      format.html { redirect_to ammo_slots_url, notice: 'Ammo slot was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ammo_slot
      @ammo_slot = AmmoSlot.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ammo_slot_params
      params.require(:ammo_slot).permit(:character_id, :weapon_slot_id, :ship_weapon_slot_id, :item_slot_id, :rounds_fired, :cargo_slot_id)
    end
end
