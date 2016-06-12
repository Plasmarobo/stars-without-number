class CargoSlotsController < ApplicationController
  before_action :set_cargo_slot, only: [:show, :edit, :update, :destroy]

  # GET /cargo_slots
  # GET /cargo_slots.json
  def index
    @cargo_slots = CargoSlot.all
  end

  # GET /cargo_slots/1
  # GET /cargo_slots/1.json
  def show
  end

  # GET /cargo_slots/new
  def new
    @cargo_slot = CargoSlot.new
  end

  # GET /cargo_slots/1/edit
  def edit
  end

  # POST /cargo_slots
  # POST /cargo_slots.json
  def create
    @cargo_slot = CargoSlot.new(cargo_slot_params)

    respond_to do |format|
      if @cargo_slot.save
        format.html { redirect_to @cargo_slot, notice: 'Cargo slot was successfully created.' }
        format.json { render :show, status: :created, location: @cargo_slot }
      else
        format.html { render :new }
        format.json { render json: @cargo_slot.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cargo_slots/1
  # PATCH/PUT /cargo_slots/1.json
  def update
    respond_to do |format|
      if @cargo_slot.update(cargo_slot_params)
        format.html { redirect_to @cargo_slot, notice: 'Cargo slot was successfully updated.' }
        format.json { render :show, status: :ok, location: @cargo_slot }
      else
        format.html { render :edit }
        format.json { render json: @cargo_slot.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cargo_slots/1
  # DELETE /cargo_slots/1.json
  def destroy
    @cargo_slot.destroy
    respond_to do |format|
      format.html { redirect_to cargo_slots_url, notice: 'Cargo slot was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cargo_slot
      @cargo_slot = CargoSlot.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cargo_slot_params
      params.require(:cargo_slot).permit(:ship_id, :cargo_id, :count, :notes, :gm_notes)
    end
end
