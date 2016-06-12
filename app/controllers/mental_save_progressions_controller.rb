class MentalSaveProgressionsController < ApplicationController
  before_action :set_mental_save_progression, only: [:show, :edit, :update, :destroy]

  # GET /mental_save_progressions
  # GET /mental_save_progressions.json
  def index
    @mental_save_progressions = MentalSaveProgression.all
  end

  # GET /mental_save_progressions/1
  # GET /mental_save_progressions/1.json
  def show
  end

  # GET /mental_save_progressions/new
  def new
    @mental_save_progression = MentalSaveProgression.new
  end

  # GET /mental_save_progressions/1/edit
  def edit
  end

  # POST /mental_save_progressions
  # POST /mental_save_progressions.json
  def create
    @mental_save_progression = MentalSaveProgression.new(mental_save_progression_params)

    respond_to do |format|
      if @mental_save_progression.save
        format.html { redirect_to @mental_save_progression, notice: 'Mental save progression was successfully created.' }
        format.json { render :show, status: :created, location: @mental_save_progression }
      else
        format.html { render :new }
        format.json { render json: @mental_save_progression.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mental_save_progressions/1
  # PATCH/PUT /mental_save_progressions/1.json
  def update
    respond_to do |format|
      if @mental_save_progression.update(mental_save_progression_params)
        format.html { redirect_to @mental_save_progression, notice: 'Mental save progression was successfully updated.' }
        format.json { render :show, status: :ok, location: @mental_save_progression }
      else
        format.html { render :edit }
        format.json { render json: @mental_save_progression.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mental_save_progressions/1
  # DELETE /mental_save_progressions/1.json
  def destroy
    @mental_save_progression.destroy
    respond_to do |format|
      format.html { redirect_to mental_save_progressions_url, notice: 'Mental save progression was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mental_save_progression
      @mental_save_progression = MentalSaveProgression.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mental_save_progression_params
      params.require(:mental_save_progression).permit(:character_class_id, :level, :mental_save)
    end
end
