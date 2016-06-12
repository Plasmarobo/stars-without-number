class TechnologySaveProgressionsController < ApplicationController
  before_action :set_technology_save_progression, only: [:show, :edit, :update, :destroy]

  # GET /technology_save_progressions
  # GET /technology_save_progressions.json
  def index
    @technology_save_progressions = TechnologySaveProgression.all
  end

  # GET /technology_save_progressions/1
  # GET /technology_save_progressions/1.json
  def show
  end

  # GET /technology_save_progressions/new
  def new
    @technology_save_progression = TechnologySaveProgression.new
  end

  # GET /technology_save_progressions/1/edit
  def edit
  end

  # POST /technology_save_progressions
  # POST /technology_save_progressions.json
  def create
    @technology_save_progression = TechnologySaveProgression.new(technology_save_progression_params)

    respond_to do |format|
      if @technology_save_progression.save
        format.html { redirect_to @technology_save_progression, notice: 'Technology save progression was successfully created.' }
        format.json { render :show, status: :created, location: @technology_save_progression }
      else
        format.html { render :new }
        format.json { render json: @technology_save_progression.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /technology_save_progressions/1
  # PATCH/PUT /technology_save_progressions/1.json
  def update
    respond_to do |format|
      if @technology_save_progression.update(technology_save_progression_params)
        format.html { redirect_to @technology_save_progression, notice: 'Technology save progression was successfully updated.' }
        format.json { render :show, status: :ok, location: @technology_save_progression }
      else
        format.html { render :edit }
        format.json { render json: @technology_save_progression.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /technology_save_progressions/1
  # DELETE /technology_save_progressions/1.json
  def destroy
    @technology_save_progression.destroy
    respond_to do |format|
      format.html { redirect_to technology_save_progressions_url, notice: 'Technology save progression was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_technology_save_progression
      @technology_save_progression = TechnologySaveProgression.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def technology_save_progression_params
      params.require(:technology_save_progression).permit(:character_class_id, :level, :technology_save)
    end
end
