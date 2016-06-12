class ArmorSlotsController < ApplicationController
  before_action :set_armor_slot, only: [:show, :edit, :update, :destroy]

  # GET /armor_slots
  # GET /armor_slots.json
  def index
    @armor_slots = ArmorSlot.all
  end

  # GET /armor_slots/1
  # GET /armor_slots/1.json
  def show
  end

  # GET /armor_slots/new
  def new
    @armor_slot = ArmorSlot.new
  end

  # GET /armor_slots/1/edit
  def edit
  end

  # POST /armor_slots
  # POST /armor_slots.json
  def create
    @armor_slot = ArmorSlot.new(armor_slot_params)

    respond_to do |format|
      if @armor_slot.save
        format.html { redirect_to @armor_slot, notice: 'Armor slot was successfully created.' }
        format.json { render :show, status: :created, location: @armor_slot }
      else
        format.html { render :new }
        format.json { render json: @armor_slot.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /armor_slots/1
  # PATCH/PUT /armor_slots/1.json
  def update
    respond_to do |format|
      if @armor_slot.update(armor_slot_params)
        format.html { redirect_to @armor_slot, notice: 'Armor slot was successfully updated.' }
        format.json { render :show, status: :ok, location: @armor_slot }
      else
        format.html { render :edit }
        format.json { render json: @armor_slot.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /armor_slots/1
  # DELETE /armor_slots/1.json
  def destroy
    @armor_slot.destroy
    respond_to do |format|
      format.html { redirect_to armor_slots_url, notice: 'Armor slot was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_armor_slot
      @armor_slot = ArmorSlot.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def armor_slot_params
      params.require(:armor_slot).permit(:armor_id, :character_id, :ammo_slot_id, :item_id)
    end
end
