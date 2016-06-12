class LuckSaveProgressionsController < ApplicationController
  before_action :set_luck_save_progression, only: [:show, :edit, :update, :destroy]

  # GET /luck_save_progressions
  # GET /luck_save_progressions.json
  def index
    @luck_save_progressions = LuckSaveProgression.all
  end

  # GET /luck_save_progressions/1
  # GET /luck_save_progressions/1.json
  def show
  end

  # GET /luck_save_progressions/new
  def new
    @luck_save_progression = LuckSaveProgression.new
  end

  # GET /luck_save_progressions/1/edit
  def edit
  end

  # POST /luck_save_progressions
  # POST /luck_save_progressions.json
  def create
    @luck_save_progression = LuckSaveProgression.new(luck_save_progression_params)

    respond_to do |format|
      if @luck_save_progression.save
        format.html { redirect_to @luck_save_progression, notice: 'Luck save progression was successfully created.' }
        format.json { render :show, status: :created, location: @luck_save_progression }
      else
        format.html { render :new }
        format.json { render json: @luck_save_progression.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /luck_save_progressions/1
  # PATCH/PUT /luck_save_progressions/1.json
  def update
    respond_to do |format|
      if @luck_save_progression.update(luck_save_progression_params)
        format.html { redirect_to @luck_save_progression, notice: 'Luck save progression was successfully updated.' }
        format.json { render :show, status: :ok, location: @luck_save_progression }
      else
        format.html { render :edit }
        format.json { render json: @luck_save_progression.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /luck_save_progressions/1
  # DELETE /luck_save_progressions/1.json
  def destroy
    @luck_save_progression.destroy
    respond_to do |format|
      format.html { redirect_to luck_save_progressions_url, notice: 'Luck save progression was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_luck_save_progression
      @luck_save_progression = LuckSaveProgression.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def luck_save_progression_params
      params.require(:luck_save_progression).permit(:character_class_id, :level, :luck_save)
    end
end
