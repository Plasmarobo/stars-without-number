class EvasionSaveProgressionsController < ApplicationController
  before_action :set_evasion_save_progression, only: [:show, :edit, :update, :destroy]

  # GET /evasion_save_progressions
  # GET /evasion_save_progressions.json
  def index
    @evasion_save_progressions = EvasionSaveProgression.all
  end

  # GET /evasion_save_progressions/1
  # GET /evasion_save_progressions/1.json
  def show
  end

  # GET /evasion_save_progressions/new
  def new
    @evasion_save_progression = EvasionSaveProgression.new
  end

  # GET /evasion_save_progressions/1/edit
  def edit
  end

  # POST /evasion_save_progressions
  # POST /evasion_save_progressions.json
  def create
    @evasion_save_progression = EvasionSaveProgression.new(evasion_save_progression_params)

    respond_to do |format|
      if @evasion_save_progression.save
        format.html { redirect_to @evasion_save_progression, notice: 'Evasion save progression was successfully created.' }
        format.json { render :show, status: :created, location: @evasion_save_progression }
      else
        format.html { render :new }
        format.json { render json: @evasion_save_progression.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /evasion_save_progressions/1
  # PATCH/PUT /evasion_save_progressions/1.json
  def update
    respond_to do |format|
      if @evasion_save_progression.update(evasion_save_progression_params)
        format.html { redirect_to @evasion_save_progression, notice: 'Evasion save progression was successfully updated.' }
        format.json { render :show, status: :ok, location: @evasion_save_progression }
      else
        format.html { render :edit }
        format.json { render json: @evasion_save_progression.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /evasion_save_progressions/1
  # DELETE /evasion_save_progressions/1.json
  def destroy
    @evasion_save_progression.destroy
    respond_to do |format|
      format.html { redirect_to evasion_save_progressions_url, notice: 'Evasion save progression was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_evasion_save_progression
      @evasion_save_progression = EvasionSaveProgression.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def evasion_save_progression_params
      params.require(:evasion_save_progression).permit(:character_class_id, :level, :evasion_save)
    end
end
