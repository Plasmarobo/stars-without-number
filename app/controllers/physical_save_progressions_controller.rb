class PhysicalSaveProgressionsController < ApplicationController
  before_action :set_physical_save_progression, only: [:show, :edit, :update, :destroy]

  # GET /physical_save_progressions
  # GET /physical_save_progressions.json
  def index
    @physical_save_progressions = PhysicalSaveProgression.all
  end

  # GET /physical_save_progressions/1
  # GET /physical_save_progressions/1.json
  def show
  end

  # GET /physical_save_progressions/new
  def new
    @physical_save_progression = PhysicalSaveProgression.new
  end

  # GET /physical_save_progressions/1/edit
  def edit
  end

  # POST /physical_save_progressions
  # POST /physical_save_progressions.json
  def create
    @physical_save_progression = PhysicalSaveProgression.new(physical_save_progression_params)

    respond_to do |format|
      if @physical_save_progression.save
        format.html { redirect_to @physical_save_progression, notice: 'Physical save progression was successfully created.' }
        format.json { render :show, status: :created, location: @physical_save_progression }
      else
        format.html { render :new }
        format.json { render json: @physical_save_progression.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /physical_save_progressions/1
  # PATCH/PUT /physical_save_progressions/1.json
  def update
    respond_to do |format|
      if @physical_save_progression.update(physical_save_progression_params)
        format.html { redirect_to @physical_save_progression, notice: 'Physical save progression was successfully updated.' }
        format.json { render :show, status: :ok, location: @physical_save_progression }
      else
        format.html { render :edit }
        format.json { render json: @physical_save_progression.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /physical_save_progressions/1
  # DELETE /physical_save_progressions/1.json
  def destroy
    @physical_save_progression.destroy
    respond_to do |format|
      format.html { redirect_to physical_save_progressions_url, notice: 'Physical save progression was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_physical_save_progression
      @physical_save_progression = PhysicalSaveProgression.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def physical_save_progression_params
      params.require(:physical_save_progression).permit(:character_class_id, :level, :physical_save)
    end
end
