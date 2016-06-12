class ReadiedItemSlotsController < ApplicationController
  before_action :set_readied_item_slot, only: [:show, :edit, :update, :destroy]

  # GET /readied_item_slots
  # GET /readied_item_slots.json
  def index
    @readied_item_slots = ReadiedItemSlot.all
  end

  # GET /readied_item_slots/1
  # GET /readied_item_slots/1.json
  def show
  end

  # GET /readied_item_slots/new
  def new
    @readied_item_slot = ReadiedItemSlot.new
  end

  # GET /readied_item_slots/1/edit
  def edit
  end

  # POST /readied_item_slots
  # POST /readied_item_slots.json
  def create
    @readied_item_slot = ReadiedItemSlot.new(readied_item_slot_params)

    respond_to do |format|
      if @readied_item_slot.save
        format.html { redirect_to @readied_item_slot, notice: 'Readied item slot was successfully created.' }
        format.json { render :show, status: :created, location: @readied_item_slot }
      else
        format.html { render :new }
        format.json { render json: @readied_item_slot.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /readied_item_slots/1
  # PATCH/PUT /readied_item_slots/1.json
  def update
    respond_to do |format|
      if @readied_item_slot.update(readied_item_slot_params)
        format.html { redirect_to @readied_item_slot, notice: 'Readied item slot was successfully updated.' }
        format.json { render :show, status: :ok, location: @readied_item_slot }
      else
        format.html { render :edit }
        format.json { render json: @readied_item_slot.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /readied_item_slots/1
  # DELETE /readied_item_slots/1.json
  def destroy
    @readied_item_slot.destroy
    respond_to do |format|
      format.html { redirect_to readied_item_slots_url, notice: 'Readied item slot was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_readied_item_slot
      @readied_item_slot = ReadiedItemSlot.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def readied_item_slot_params
      params.require(:readied_item_slot).permit(:character_id, :item_slot_id)
    end
end
