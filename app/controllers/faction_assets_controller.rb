class FactionAssetsController < ApplicationController
  before_action :set_faction_asset, only: [:show, :edit, :update, :destroy]

  # GET /faction_assets
  # GET /faction_assets.json
  def index
    @faction_assets = FactionAsset.all
  end

  # GET /faction_assets/1
  # GET /faction_assets/1.json
  def show
  end

  # GET /faction_assets/new
  def new
    @faction_asset = FactionAsset.new
  end

  # GET /faction_assets/1/edit
  def edit
  end

  # POST /faction_assets
  # POST /faction_assets.json
  def create
    @faction_asset = FactionAsset.new(faction_asset_params)

    respond_to do |format|
      if @faction_asset.save
        format.html { redirect_to @faction_asset, notice: 'Faction asset was successfully created.' }
        format.json { render :show, status: :created, location: @faction_asset }
      else
        format.html { render :new }
        format.json { render json: @faction_asset.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /faction_assets/1
  # PATCH/PUT /faction_assets/1.json
  def update
    respond_to do |format|
      if @faction_asset.update(faction_asset_params)
        format.html { redirect_to @faction_asset, notice: 'Faction asset was successfully updated.' }
        format.json { render :show, status: :ok, location: @faction_asset }
      else
        format.html { render :edit }
        format.json { render json: @faction_asset.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /faction_assets/1
  # DELETE /faction_assets/1.json
  def destroy
    @faction_asset.destroy
    respond_to do |format|
      format.html { redirect_to faction_assets_url, notice: 'Faction asset was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_faction_asset
      @faction_asset = FactionAsset.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def faction_asset_params
      params.require(:faction_asset).permit(:maintained, :disabled, :asset_id, :hp, :faction_id, :gm_notes, :notes)
    end
end
