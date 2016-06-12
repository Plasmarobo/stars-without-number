class FleetShipsController < ApplicationController
  before_action :set_fleet_ship, only: [:show, :edit, :update, :destroy]

  # GET /fleet_ships
  # GET /fleet_ships.json
  def index
    @fleet_ships = FleetShip.all
  end

  # GET /fleet_ships/1
  # GET /fleet_ships/1.json
  def show
  end

  # GET /fleet_ships/new
  def new
    @fleet_ship = FleetShip.new
  end

  # GET /fleet_ships/1/edit
  def edit
  end

  # POST /fleet_ships
  # POST /fleet_ships.json
  def create
    @fleet_ship = FleetShip.new(fleet_ship_params)

    respond_to do |format|
      if @fleet_ship.save
        format.html { redirect_to @fleet_ship, notice: 'Fleet ship was successfully created.' }
        format.json { render :show, status: :created, location: @fleet_ship }
      else
        format.html { render :new }
        format.json { render json: @fleet_ship.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fleet_ships/1
  # PATCH/PUT /fleet_ships/1.json
  def update
    respond_to do |format|
      if @fleet_ship.update(fleet_ship_params)
        format.html { redirect_to @fleet_ship, notice: 'Fleet ship was successfully updated.' }
        format.json { render :show, status: :ok, location: @fleet_ship }
      else
        format.html { render :edit }
        format.json { render json: @fleet_ship.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fleet_ships/1
  # DELETE /fleet_ships/1.json
  def destroy
    @fleet_ship.destroy
    respond_to do |format|
      format.html { redirect_to fleet_ships_url, notice: 'Fleet ship was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fleet_ship
      @fleet_ship = FleetShip.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fleet_ship_params
      params.require(:fleet_ship).permit(:ship_id, :fleet_id)
    end
end
