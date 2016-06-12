class ShipFittingsController < ApplicationController
  before_action :set_ship_fitting, only: [:show, :edit, :update, :destroy]

  # GET /ship_fittings
  # GET /ship_fittings.json
  def index
    @ship_fittings = ShipFitting.all
  end

  # GET /ship_fittings/1
  # GET /ship_fittings/1.json
  def show
  end

  # GET /ship_fittings/new
  def new
    @ship_fitting = ShipFitting.new
  end

  # GET /ship_fittings/1/edit
  def edit
  end

  # POST /ship_fittings
  # POST /ship_fittings.json
  def create
    @ship_fitting = ShipFitting.new(ship_fitting_params)

    respond_to do |format|
      if @ship_fitting.save
        format.html { redirect_to @ship_fitting, notice: 'Ship fitting was successfully created.' }
        format.json { render :show, status: :created, location: @ship_fitting }
      else
        format.html { render :new }
        format.json { render json: @ship_fitting.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ship_fittings/1
  # PATCH/PUT /ship_fittings/1.json
  def update
    respond_to do |format|
      if @ship_fitting.update(ship_fitting_params)
        format.html { redirect_to @ship_fitting, notice: 'Ship fitting was successfully updated.' }
        format.json { render :show, status: :ok, location: @ship_fitting }
      else
        format.html { render :edit }
        format.json { render json: @ship_fitting.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ship_fittings/1
  # DELETE /ship_fittings/1.json
  def destroy
    @ship_fitting.destroy
    respond_to do |format|
      format.html { redirect_to ship_fittings_url, notice: 'Ship fitting was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ship_fitting
      @ship_fitting = ShipFitting.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ship_fitting_params
      params.require(:ship_fitting).permit(:name, :description, :cost, :power, :mass, :min_hull_class, :max_hull_class, :tech_level, :notes, :gm_notes)
    end
end
