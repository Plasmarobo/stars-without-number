class FactionAttacksController < ApplicationController
  before_action :set_faction_attack, only: [:show, :edit, :update, :destroy]

  # GET /faction_attacks
  # GET /faction_attacks.json
  def index
    @faction_attacks = FactionAttack.all
  end

  # GET /faction_attacks/1
  # GET /faction_attacks/1.json
  def show
  end

  # GET /faction_attacks/new
  def new
    @faction_attack = FactionAttack.new
  end

  # GET /faction_attacks/1/edit
  def edit
  end

  # POST /faction_attacks
  # POST /faction_attacks.json
  def create
    @faction_attack = FactionAttack.new(faction_attack_params)

    respond_to do |format|
      if @faction_attack.save
        format.html { redirect_to @faction_attack, notice: 'Faction attack was successfully created.' }
        format.json { render :show, status: :created, location: @faction_attack }
      else
        format.html { render :new }
        format.json { render json: @faction_attack.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /faction_attacks/1
  # PATCH/PUT /faction_attacks/1.json
  def update
    respond_to do |format|
      if @faction_attack.update(faction_attack_params)
        format.html { redirect_to @faction_attack, notice: 'Faction attack was successfully updated.' }
        format.json { render :show, status: :ok, location: @faction_attack }
      else
        format.html { render :edit }
        format.json { render json: @faction_attack.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /faction_attacks/1
  # DELETE /faction_attacks/1.json
  def destroy
    @faction_attack.destroy
    respond_to do |format|
      format.html { redirect_to faction_attacks_url, notice: 'Faction attack was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_faction_attack
      @faction_attack = FactionAttack.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def faction_attack_params
      params.require(:faction_attack).permit(:attacker_id, :defender_id, :attack_roll, :defense_roll, :attack, :defense, :counter)
    end
end
