class PsiDisciplinesController < ApplicationController
  before_action :set_psi_discipline, only: [:show, :edit, :update, :destroy]

  # GET /psi_disciplines
  # GET /psi_disciplines.json
  def index
    @psi_disciplines = PsiDiscipline.all
  end

  # GET /psi_disciplines/1
  # GET /psi_disciplines/1.json
  def show
  end

  # GET /psi_disciplines/new
  def new
    @psi_discipline = PsiDiscipline.new
  end

  # GET /psi_disciplines/1/edit
  def edit
  end

  # POST /psi_disciplines
  # POST /psi_disciplines.json
  def create
    @psi_discipline = PsiDiscipline.new(psi_discipline_params)

    respond_to do |format|
      if @psi_discipline.save
        format.html { redirect_to @psi_discipline, notice: 'Psi discipline was successfully created.' }
        format.json { render :show, status: :created, location: @psi_discipline }
      else
        format.html { render :new }
        format.json { render json: @psi_discipline.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /psi_disciplines/1
  # PATCH/PUT /psi_disciplines/1.json
  def update
    respond_to do |format|
      if @psi_discipline.update(psi_discipline_params)
        format.html { redirect_to @psi_discipline, notice: 'Psi discipline was successfully updated.' }
        format.json { render :show, status: :ok, location: @psi_discipline }
      else
        format.html { render :edit }
        format.json { render json: @psi_discipline.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /psi_disciplines/1
  # DELETE /psi_disciplines/1.json
  def destroy
    @psi_discipline.destroy
    respond_to do |format|
      format.html { redirect_to psi_disciplines_url, notice: 'Psi discipline was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_psi_discipline
      @psi_discipline = PsiDiscipline.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def psi_discipline_params
      params.require(:psi_discipline).permit(:name, :description, :cost, :system_strain, :attack, :defense, :level)
    end
end
