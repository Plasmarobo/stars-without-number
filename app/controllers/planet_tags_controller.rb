class PlanetTagsController < ApplicationController
  before_action :set_planet_tag, only: [:show, :edit, :update, :destroy]

  # GET /planet_tags
  # GET /planet_tags.json
  def index
    @planet_tags = PlanetTag.all
  end

  # GET /planet_tags/1
  # GET /planet_tags/1.json
  def show
  end

  # GET /planet_tags/new
  def new
    @planet_tag = PlanetTag.new
  end

  # GET /planet_tags/1/edit
  def edit
  end

  # POST /planet_tags
  # POST /planet_tags.json
  def create
    @planet_tag = PlanetTag.new(planet_tag_params)

    respond_to do |format|
      if @planet_tag.save
        format.html { redirect_to @planet_tag, notice: 'Planet tag was successfully created.' }
        format.json { render :show, status: :created, location: @planet_tag }
      else
        format.html { render :new }
        format.json { render json: @planet_tag.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /planet_tags/1
  # PATCH/PUT /planet_tags/1.json
  def update
    respond_to do |format|
      if @planet_tag.update(planet_tag_params)
        format.html { redirect_to @planet_tag, notice: 'Planet tag was successfully updated.' }
        format.json { render :show, status: :ok, location: @planet_tag }
      else
        format.html { render :edit }
        format.json { render json: @planet_tag.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /planet_tags/1
  # DELETE /planet_tags/1.json
  def destroy
    @planet_tag.destroy
    respond_to do |format|
      format.html { redirect_to planet_tags_url, notice: 'Planet tag was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_planet_tag
      @planet_tag = PlanetTag.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def planet_tag_params
      params.require(:planet_tag).permit(:planet_id, :tag_id)
    end
end
