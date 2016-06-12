class ItemSlotsController < ApplicationController
  before_action :set_item_slot, only: [:show, :edit, :update, :destroy]

  # GET /item_slots
  # GET /item_slots.json
  def index
    @item_slots = ItemSlot.all
  end

  # GET /item_slots/1
  # GET /item_slots/1.json
  def show
  end

  # GET /item_slots/new
  def new
    @item_slot = ItemSlot.new
  end

  # GET /item_slots/1/edit
  def edit
  end

  # POST /item_slots
  # POST /item_slots.json
  def create
    @item_slot = ItemSlot.new(item_slot_params)

    respond_to do |format|
      if @item_slot.save
        format.html { redirect_to @item_slot, notice: 'Item slot was successfully created.' }
        format.json { render :show, status: :created, location: @item_slot }
      else
        format.html { render :new }
        format.json { render json: @item_slot.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /item_slots/1
  # PATCH/PUT /item_slots/1.json
  def update
    respond_to do |format|
      if @item_slot.update(item_slot_params)
        format.html { redirect_to @item_slot, notice: 'Item slot was successfully updated.' }
        format.json { render :show, status: :ok, location: @item_slot }
      else
        format.html { render :edit }
        format.json { render json: @item_slot.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /item_slots/1
  # DELETE /item_slots/1.json
  def destroy
    @item_slot.destroy
    respond_to do |format|
      format.html { redirect_to item_slots_url, notice: 'Item slot was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_item_slot
      @item_slot = ItemSlot.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def item_slot_params
      params.require(:item_slot).permit(:item_id, :character_id, :uses, :notes, :gm_notes)
    end
end
