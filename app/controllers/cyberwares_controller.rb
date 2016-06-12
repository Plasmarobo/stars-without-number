class CyberwaresController < ApplicationController
  before_action :set_cyberware, only: [:show, :edit, :update, :destroy]

  # GET /cyberwares
  # GET /cyberwares.json
  def index
    @cyberwares = Cyberware.all
  end

  # GET /cyberwares/1
  # GET /cyberwares/1.json
  def show
  end

  # GET /cyberwares/new
  def new
    @cyberware = Cyberware.new
  end

  # GET /cyberwares/1/edit
  def edit
  end

  # POST /cyberwares
  # POST /cyberwares.json
  def create
    @cyberware = Cyberware.new(cyberware_params)

    respond_to do |format|
      if @cyberware.save
        format.html { redirect_to @cyberware, notice: 'Cyberware was successfully created.' }
        format.json { render :show, status: :created, location: @cyberware }
      else
        format.html { render :new }
        format.json { render json: @cyberware.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cyberwares/1
  # PATCH/PUT /cyberwares/1.json
  def update
    respond_to do |format|
      if @cyberware.update(cyberware_params)
        format.html { redirect_to @cyberware, notice: 'Cyberware was successfully updated.' }
        format.json { render :show, status: :ok, location: @cyberware }
      else
        format.html { render :edit }
        format.json { render json: @cyberware.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cyberwares/1
  # DELETE /cyberwares/1.json
  def destroy
    @cyberware.destroy
    respond_to do |format|
      format.html { redirect_to cyberwares_url, notice: 'Cyberware was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cyberware
      @cyberware = Cyberware.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cyberware_params
      params.require(:cyberware).permit(:name, :description, :cost, :system_strain, :tech_level)
    end
end
