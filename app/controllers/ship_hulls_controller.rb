class ShipHullsController < ApplicationController
  before_action :set_ship_hull, only: [:show, :edit, :update, :destroy]

  # GET /ship_hulls
  # GET /ship_hulls.json
  def index
    @ship_hulls = ShipHull.all
  end

  # GET /ship_hulls/1
  # GET /ship_hulls/1.json
  def show
  end

  # GET /ship_hulls/new
  def new
    @ship_hull = ShipHull.new
  end

  # GET /ship_hulls/1/edit
  def edit
  end

  # POST /ship_hulls
  # POST /ship_hulls.json
  def create
    @ship_hull = ShipHull.new(ship_hull_params)

    respond_to do |format|
      if @ship_hull.save
        format.html { redirect_to @ship_hull, notice: 'Ship hull was successfully created.' }
        format.json { render :show, status: :created, location: @ship_hull }
      else
        format.html { render :new }
        format.json { render json: @ship_hull.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ship_hulls/1
  # PATCH/PUT /ship_hulls/1.json
  def update
    respond_to do |format|
      if @ship_hull.update(ship_hull_params)
        format.html { redirect_to @ship_hull, notice: 'Ship hull was successfully updated.' }
        format.json { render :show, status: :ok, location: @ship_hull }
      else
        format.html { render :edit }
        format.json { render json: @ship_hull.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ship_hulls/1
  # DELETE /ship_hulls/1.json
  def destroy
    @ship_hull.destroy
    respond_to do |format|
      format.html { redirect_to ship_hulls_url, notice: 'Ship hull was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ship_hull
      @ship_hull = ShipHull.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ship_hull_params
      params.require(:ship_hull).permit(:name, :description, :cost, :max_hp, :min_crew, :max_crew, :max_power, :speed, :armor, :ac, :max_mass, :hardpoints, :hull_class, :manufacturerer)
    end
end
