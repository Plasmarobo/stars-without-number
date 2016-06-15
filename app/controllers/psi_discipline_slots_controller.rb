class PsiDisciplineSlotsController < ApplicationController
  before_action :set_psi_discipline_slot, only: [:show, :edit, :update, :destroy]

  # GET /psi_discipline_slots
  # GET /psi_discipline_slots.json
  def index
    @psi_discipline_slots = PsiDisciplineSlot.all
  end

  # GET /psi_discipline_slots/1
  # GET /psi_discipline_slots/1.json
  def show
  end

  # GET /psi_discipline_slots/new
  def new
    @psi_discipline_slot = PsiDisciplineSlot.new
  end

  # GET /psi_discipline_slots/1/edit
  def edit
  end

  # POST /psi_discipline_slots
  # POST /psi_discipline_slots.json
  def create
    @psi_discipline_slot = PsiDisciplineSlot.new(psi_discipline_slot_params)

    respond_to do |format|
      if @psi_discipline_slot.save
        format.html { redirect_to @psi_discipline_slot, notice: 'Psi discipline slot was successfully created.' }
        format.json { render :show, status: :created, location: @psi_discipline_slot }
      else
        format.html { render :new }
        format.json { render json: @psi_discipline_slot.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /psi_discipline_slots/1
  # PATCH/PUT /psi_discipline_slots/1.json
  def update
    respond_to do |format|
      if @psi_discipline_slot.update(psi_discipline_slot_params)
        format.html { redirect_to @psi_discipline_slot, notice: 'Psi discipline slot was successfully updated.' }
        format.json { render :show, status: :ok, location: @psi_discipline_slot }
      else
        format.html { render :edit }
        format.json { render json: @psi_discipline_slot.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /psi_discipline_slots/1
  # DELETE /psi_discipline_slots/1.json
  def destroy
    @psi_discipline_slot.destroy
    respond_to do |format|
      format.html { redirect_to psi_discipline_slots_url, notice: 'Psi discipline slot was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_psi_discipline_slot
      @psi_discipline_slot = PsiDisciplineSlot.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def psi_discipline_slot_params
      params.require(:psi_discipline_slot).permit(:character_id, :psi_discipline_id)
    end
end
