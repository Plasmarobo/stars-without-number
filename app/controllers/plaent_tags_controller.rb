class PlaentTagsController < ApplicationController
  before_action :set_plaent_tag, only: [:show, :edit, :update, :destroy]

  # GET /plaent_tags
  # GET /plaent_tags.json
  def index
    @plaent_tags = PlaentTag.all
  end

  # GET /plaent_tags/1
  # GET /plaent_tags/1.json
  def show
  end

  # GET /plaent_tags/new
  def new
    @plaent_tag = PlaentTag.new
  end

  # GET /plaent_tags/1/edit
  def edit
  end

  # POST /plaent_tags
  # POST /plaent_tags.json
  def create
    @plaent_tag = PlaentTag.new(plaent_tag_params)

    respond_to do |format|
      if @plaent_tag.save
        format.html { redirect_to @plaent_tag, notice: 'Plaent tag was successfully created.' }
        format.json { render :show, status: :created, location: @plaent_tag }
      else
        format.html { render :new }
        format.json { render json: @plaent_tag.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /plaent_tags/1
  # PATCH/PUT /plaent_tags/1.json
  def update
    respond_to do |format|
      if @plaent_tag.update(plaent_tag_params)
        format.html { redirect_to @plaent_tag, notice: 'Plaent tag was successfully updated.' }
        format.json { render :show, status: :ok, location: @plaent_tag }
      else
        format.html { render :edit }
        format.json { render json: @plaent_tag.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /plaent_tags/1
  # DELETE /plaent_tags/1.json
  def destroy
    @plaent_tag.destroy
    respond_to do |format|
      format.html { redirect_to plaent_tags_url, notice: 'Plaent tag was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_plaent_tag
      @plaent_tag = PlaentTag.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def plaent_tag_params
      params.require(:plaent_tag).permit(:planet_id, :tag_id)
    end
end
