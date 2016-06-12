class ShipArmorsController < ApplicationController
  before_action :set_ship_armor, only: [:show, :edit, :update, :destroy]

  # GET /ship_armors
  # GET /ship_armors.json
  def index
    @ship_armors = ShipArmor.all
  end

  # GET /ship_armors/1
  # GET /ship_armors/1.json
  def show
  end

  # GET /ship_armors/new
  def new
    @ship_armor = ShipArmor.new
  end

  # GET /ship_armors/1/edit
  def edit
  end

  # POST /ship_armors
  # POST /ship_armors.json
  def create
    @ship_armor = ShipArmor.new(ship_armor_params)

    respond_to do |format|
      if @ship_armor.save
        format.html { redirect_to @ship_armor, notice: 'Ship armor was successfully created.' }
        format.json { render :show, status: :created, location: @ship_armor }
      else
        format.html { render :new }
        format.json { render json: @ship_armor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ship_armors/1
  # PATCH/PUT /ship_armors/1.json
  def update
    respond_to do |format|
      if @ship_armor.update(ship_armor_params)
        format.html { redirect_to @ship_armor, notice: 'Ship armor was successfully updated.' }
        format.json { render :show, status: :ok, location: @ship_armor }
      else
        format.html { render :edit }
        format.json { render json: @ship_armor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ship_armors/1
  # DELETE /ship_armors/1.json
  def destroy
    @ship_armor.destroy
    respond_to do |format|
      format.html { redirect_to ship_armors_url, notice: 'Ship armor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ship_armor
      @ship_armor = ShipArmor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ship_armor_params
      params.require(:ship_armor).permit(:name, :description, :cost, :power, :mass, :min_hull_class, :tech_level, :ac_bonus, :ac, :speed_penalty, :ap_reduction, :evasion_chance, :phase_reduction, :bonus_hp)
    end
end
