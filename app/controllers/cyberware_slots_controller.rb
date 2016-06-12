class CyberwareSlotsController < ApplicationController
  before_action :set_cyberware_slot, only: [:show, :edit, :update, :destroy]

  # GET /cyberware_slots
  # GET /cyberware_slots.json
  def index
    @cyberware_slots = CyberwareSlot.all
  end

  # GET /cyberware_slots/1
  # GET /cyberware_slots/1.json
  def show
  end

  # GET /cyberware_slots/new
  def new
    @cyberware_slot = CyberwareSlot.new
  end

  # GET /cyberware_slots/1/edit
  def edit
  end

  # POST /cyberware_slots
  # POST /cyberware_slots.json
  def create
    @cyberware_slot = CyberwareSlot.new(cyberware_slot_params)

    respond_to do |format|
      if @cyberware_slot.save
        format.html { redirect_to @cyberware_slot, notice: 'Cyberware slot was successfully created.' }
        format.json { render :show, status: :created, location: @cyberware_slot }
      else
        format.html { render :new }
        format.json { render json: @cyberware_slot.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cyberware_slots/1
  # PATCH/PUT /cyberware_slots/1.json
  def update
    respond_to do |format|
      if @cyberware_slot.update(cyberware_slot_params)
        format.html { redirect_to @cyberware_slot, notice: 'Cyberware slot was successfully updated.' }
        format.json { render :show, status: :ok, location: @cyberware_slot }
      else
        format.html { render :edit }
        format.json { render json: @cyberware_slot.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cyberware_slots/1
  # DELETE /cyberware_slots/1.json
  def destroy
    @cyberware_slot.destroy
    respond_to do |format|
      format.html { redirect_to cyberware_slots_url, notice: 'Cyberware slot was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cyberware_slot
      @cyberware_slot = CyberwareSlot.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cyberware_slot_params
      params.require(:cyberware_slot).permit(:cyberware_id, :character_id)
    end
end
