class ShipWeaponsController < ApplicationController
  before_action :set_ship_weapon, only: [:show, :edit, :update, :destroy]

  # GET /ship_weapons
  # GET /ship_weapons.json
  def index
    @ship_weapons = ShipWeapon.all
  end

  # GET /ship_weapons/1
  # GET /ship_weapons/1.json
  def show
  end

  # GET /ship_weapons/new
  def new
    @ship_weapon = ShipWeapon.new
  end

  # GET /ship_weapons/1/edit
  def edit
  end

  # POST /ship_weapons
  # POST /ship_weapons.json
  def create
    @ship_weapon = ShipWeapon.new(ship_weapon_params)

    respond_to do |format|
      if @ship_weapon.save
        format.html { redirect_to @ship_weapon, notice: 'Ship weapon was successfully created.' }
        format.json { render :show, status: :created, location: @ship_weapon }
      else
        format.html { render :new }
        format.json { render json: @ship_weapon.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ship_weapons/1
  # PATCH/PUT /ship_weapons/1.json
  def update
    respond_to do |format|
      if @ship_weapon.update(ship_weapon_params)
        format.html { redirect_to @ship_weapon, notice: 'Ship weapon was successfully updated.' }
        format.json { render :show, status: :ok, location: @ship_weapon }
      else
        format.html { render :edit }
        format.json { render json: @ship_weapon.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ship_weapons/1
  # DELETE /ship_weapons/1.json
  def destroy
    @ship_weapon.destroy
    respond_to do |format|
      format.html { redirect_to ship_weapons_url, notice: 'Ship weapon was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ship_weapon
      @ship_weapon = ShipWeapon.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ship_weapon_params
      params.require(:ship_weapon).permit(:name, :description, :cost, :damage, :power, :mass, :hardpoint_use, :min_hull_class, :tech_level, :ap, :clumsy, :ammo_id, :phase_rating, :cloud)
    end
end
