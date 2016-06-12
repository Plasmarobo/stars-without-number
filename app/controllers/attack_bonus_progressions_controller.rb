class AttackBonusProgressionsController < ApplicationController
  before_action :set_attack_bonus_progression, only: [:show, :edit, :update, :destroy]

  # GET /attack_bonus_progressions
  # GET /attack_bonus_progressions.json
  def index
    @attack_bonus_progressions = AttackBonusProgression.all
  end

  # GET /attack_bonus_progressions/1
  # GET /attack_bonus_progressions/1.json
  def show
  end

  # GET /attack_bonus_progressions/new
  def new
    @attack_bonus_progression = AttackBonusProgression.new
  end

  # GET /attack_bonus_progressions/1/edit
  def edit
  end

  # POST /attack_bonus_progressions
  # POST /attack_bonus_progressions.json
  def create
    @attack_bonus_progression = AttackBonusProgression.new(attack_bonus_progression_params)

    respond_to do |format|
      if @attack_bonus_progression.save
        format.html { redirect_to @attack_bonus_progression, notice: 'Attack bonus progression was successfully created.' }
        format.json { render :show, status: :created, location: @attack_bonus_progression }
      else
        format.html { render :new }
        format.json { render json: @attack_bonus_progression.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /attack_bonus_progressions/1
  # PATCH/PUT /attack_bonus_progressions/1.json
  def update
    respond_to do |format|
      if @attack_bonus_progression.update(attack_bonus_progression_params)
        format.html { redirect_to @attack_bonus_progression, notice: 'Attack bonus progression was successfully updated.' }
        format.json { render :show, status: :ok, location: @attack_bonus_progression }
      else
        format.html { render :edit }
        format.json { render json: @attack_bonus_progression.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /attack_bonus_progressions/1
  # DELETE /attack_bonus_progressions/1.json
  def destroy
    @attack_bonus_progression.destroy
    respond_to do |format|
      format.html { redirect_to attack_bonus_progressions_url, notice: 'Attack bonus progression was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_attack_bonus_progression
      @attack_bonus_progression = AttackBonusProgression.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def attack_bonus_progression_params
      params.require(:attack_bonus_progression).permit(:character_class_id, :level, :attack_bonus)
    end
end
