class FactionTagsController < ApplicationController
  before_action :set_faction_tag, only: [:show, :edit, :update, :destroy]

  # GET /faction_tags
  # GET /faction_tags.json
  def index
    @faction_tags = FactionTag.all
  end

  # GET /faction_tags/1
  # GET /faction_tags/1.json
  def show
  end

  # GET /faction_tags/new
  def new
    @faction_tag = FactionTag.new
  end

  # GET /faction_tags/1/edit
  def edit
  end

  # POST /faction_tags
  # POST /faction_tags.json
  def create
    @faction_tag = FactionTag.new(faction_tag_params)

    respond_to do |format|
      if @faction_tag.save
        format.html { redirect_to @faction_tag, notice: 'Faction tag was successfully created.' }
        format.json { render :show, status: :created, location: @faction_tag }
      else
        format.html { render :new }
        format.json { render json: @faction_tag.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /faction_tags/1
  # PATCH/PUT /faction_tags/1.json
  def update
    respond_to do |format|
      if @faction_tag.update(faction_tag_params)
        format.html { redirect_to @faction_tag, notice: 'Faction tag was successfully updated.' }
        format.json { render :show, status: :ok, location: @faction_tag }
      else
        format.html { render :edit }
        format.json { render json: @faction_tag.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /faction_tags/1
  # DELETE /faction_tags/1.json
  def destroy
    @faction_tag.destroy
    respond_to do |format|
      format.html { redirect_to faction_tags_url, notice: 'Faction tag was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_faction_tag
      @faction_tag = FactionTag.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def faction_tag_params
      params.require(:faction_tag).permit(:faction_id, :tag_id)
    end
end
