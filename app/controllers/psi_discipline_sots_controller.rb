class PsiDisciplineSotsController < ApplicationController
  before_action :set_psi_discipline_sot, only: [:show, :edit, :update, :destroy]

  # GET /psi_discipline_sots
  # GET /psi_discipline_sots.json
  def index
    @psi_discipline_sots = PsiDisciplineSot.all
  end

  # GET /psi_discipline_sots/1
  # GET /psi_discipline_sots/1.json
  def show
  end

  # GET /psi_discipline_sots/new
  def new
    @psi_discipline_sot = PsiDisciplineSot.new
  end

  # GET /psi_discipline_sots/1/edit
  def edit
  end

  # POST /psi_discipline_sots
  # POST /psi_discipline_sots.json
  def create
    @psi_discipline_sot = PsiDisciplineSot.new(psi_discipline_sot_params)

    respond_to do |format|
      if @psi_discipline_sot.save
        format.html { redirect_to @psi_discipline_sot, notice: 'Psi discipline sot was successfully created.' }
        format.json { render :show, status: :created, location: @psi_discipline_sot }
      else
        format.html { render :new }
        format.json { render json: @psi_discipline_sot.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /psi_discipline_sots/1
  # PATCH/PUT /psi_discipline_sots/1.json
  def update
    respond_to do |format|
      if @psi_discipline_sot.update(psi_discipline_sot_params)
        format.html { redirect_to @psi_discipline_sot, notice: 'Psi discipline sot was successfully updated.' }
        format.json { render :show, status: :ok, location: @psi_discipline_sot }
      else
        format.html { render :edit }
        format.json { render json: @psi_discipline_sot.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /psi_discipline_sots/1
  # DELETE /psi_discipline_sots/1.json
  def destroy
    @psi_discipline_sot.destroy
    respond_to do |format|
      format.html { redirect_to psi_discipline_sots_url, notice: 'Psi discipline sot was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_psi_discipline_sot
      @psi_discipline_sot = PsiDisciplineSot.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def psi_discipline_sot_params
      params.require(:psi_discipline_sot).permit(:character_id, :psi_discipline_id)
    end
end
