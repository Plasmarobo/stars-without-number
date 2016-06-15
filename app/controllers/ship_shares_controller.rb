class ShipSharesController < ApplicationController
  before_action :set_ship_share, only: [:show, :edit, :update, :destroy]

  # GET /ship_shares
  # GET /ship_shares.json
  def index
    @ship_shares = ShipShare.all
  end

  # GET /ship_shares/1
  # GET /ship_shares/1.json
  def show
  end

  # GET /ship_shares/new
  def new
    @ship_share = ShipShare.new
  end

  # GET /ship_shares/1/edit
  def edit
  end

  # POST /ship_shares
  # POST /ship_shares.json
  def create
    @ship_share = ShipShare.new(ship_share_params)

    respond_to do |format|
      if @ship_share.save
        format.html { redirect_to @ship_share, notice: 'Ship share was successfully created.' }
        format.json { render :show, status: :created, location: @ship_share }
      else
        format.html { render :new }
        format.json { render json: @ship_share.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ship_shares/1
  # PATCH/PUT /ship_shares/1.json
  def update
    respond_to do |format|
      if @ship_share.update(ship_share_params)
        format.html { redirect_to @ship_share, notice: 'Ship share was successfully updated.' }
        format.json { render :show, status: :ok, location: @ship_share }
      else
        format.html { render :edit }
        format.json { render json: @ship_share.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ship_shares/1
  # DELETE /ship_shares/1.json
  def destroy
    @ship_share.destroy
    respond_to do |format|
      format.html { redirect_to ship_shares_url, notice: 'Ship share was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ship_share
      @ship_share = ShipShare.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ship_share_params
      params.require(:ship_share).permit(:character_id, :ship_id, :shares)
    end
end
