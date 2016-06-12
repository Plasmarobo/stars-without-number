class StowedItemSlotsController < ApplicationController
  before_action :set_stowed_item_slot, only: [:show, :edit, :update, :destroy]

  # GET /stowed_item_slots
  # GET /stowed_item_slots.json
  def index
    @stowed_item_slots = StowedItemSlot.all
  end

  # GET /stowed_item_slots/1
  # GET /stowed_item_slots/1.json
  def show
  end

  # GET /stowed_item_slots/new
  def new
    @stowed_item_slot = StowedItemSlot.new
  end

  # GET /stowed_item_slots/1/edit
  def edit
  end

  # POST /stowed_item_slots
  # POST /stowed_item_slots.json
  def create
    @stowed_item_slot = StowedItemSlot.new(stowed_item_slot_params)

    respond_to do |format|
      if @stowed_item_slot.save
        format.html { redirect_to @stowed_item_slot, notice: 'Stowed item slot was successfully created.' }
        format.json { render :show, status: :created, location: @stowed_item_slot }
      else
        format.html { render :new }
        format.json { render json: @stowed_item_slot.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /stowed_item_slots/1
  # PATCH/PUT /stowed_item_slots/1.json
  def update
    respond_to do |format|
      if @stowed_item_slot.update(stowed_item_slot_params)
        format.html { redirect_to @stowed_item_slot, notice: 'Stowed item slot was successfully updated.' }
        format.json { render :show, status: :ok, location: @stowed_item_slot }
      else
        format.html { render :edit }
        format.json { render json: @stowed_item_slot.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stowed_item_slots/1
  # DELETE /stowed_item_slots/1.json
  def destroy
    @stowed_item_slot.destroy
    respond_to do |format|
      format.html { redirect_to stowed_item_slots_url, notice: 'Stowed item slot was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stowed_item_slot
      @stowed_item_slot = StowedItemSlot.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def stowed_item_slot_params
      params.require(:stowed_item_slot).permit(:character_id, :item_slot_id)
    end
end
