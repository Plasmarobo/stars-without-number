class SkillSlotsController < ApplicationController
  before_action :set_skill_slot, only: [:show, :edit, :update, :destroy]

  # GET /skill_slots
  # GET /skill_slots.json
  def index
    @skill_slots = SkillSlot.all
  end

  # GET /skill_slots/1
  # GET /skill_slots/1.json
  def show
  end

  # GET /skill_slots/new
  def new
    @skill_slot = SkillSlot.new
  end

  # GET /skill_slots/1/edit
  def edit
  end

  # POST /skill_slots
  # POST /skill_slots.json
  def create
    @skill_slot = SkillSlot.new(skill_slot_params)

    respond_to do |format|
      if @skill_slot.save
        format.html { redirect_to @skill_slot, notice: 'Skill slot was successfully created.' }
        format.json { render :show, status: :created, location: @skill_slot }
      else
        format.html { render :new }
        format.json { render json: @skill_slot.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /skill_slots/1
  # PATCH/PUT /skill_slots/1.json
  def update
    respond_to do |format|
      if @skill_slot.update(skill_slot_params)
        format.html { redirect_to @skill_slot, notice: 'Skill slot was successfully updated.' }
        format.json { render :show, status: :ok, location: @skill_slot }
      else
        format.html { render :edit }
        format.json { render json: @skill_slot.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /skill_slots/1
  # DELETE /skill_slots/1.json
  def destroy
    @skill_slot.destroy
    respond_to do |format|
      format.html { redirect_to skill_slots_url, notice: 'Skill slot was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_skill_slot
      @skill_slot = SkillSlot.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def skill_slot_params
      params.require(:skill_slot).permit(:character_id, :background_id, :training_id, :skill_id, :rank)
    end
end
