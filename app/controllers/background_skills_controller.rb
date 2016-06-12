class BackgroundSkillsController < ApplicationController
  before_action :set_background_skill, only: [:show, :edit, :update, :destroy]

  # GET /background_skills
  # GET /background_skills.json
  def index
    @background_skills = BackgroundSkill.all
  end

  # GET /background_skills/1
  # GET /background_skills/1.json
  def show
  end

  # GET /background_skills/new
  def new
    @background_skill = BackgroundSkill.new
  end

  # GET /background_skills/1/edit
  def edit
  end

  # POST /background_skills
  # POST /background_skills.json
  def create
    @background_skill = BackgroundSkill.new(background_skill_params)

    respond_to do |format|
      if @background_skill.save
        format.html { redirect_to @background_skill, notice: 'Background skill was successfully created.' }
        format.json { render :show, status: :created, location: @background_skill }
      else
        format.html { render :new }
        format.json { render json: @background_skill.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /background_skills/1
  # PATCH/PUT /background_skills/1.json
  def update
    respond_to do |format|
      if @background_skill.update(background_skill_params)
        format.html { redirect_to @background_skill, notice: 'Background skill was successfully updated.' }
        format.json { render :show, status: :ok, location: @background_skill }
      else
        format.html { render :edit }
        format.json { render json: @background_skill.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /background_skills/1
  # DELETE /background_skills/1.json
  def destroy
    @background_skill.destroy
    respond_to do |format|
      format.html { redirect_to background_skills_url, notice: 'Background skill was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_background_skill
      @background_skill = BackgroundSkill.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def background_skill_params
      params.require(:background_skill).permit(:background_id, :skill_id)
    end
end
