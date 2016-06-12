class ClassSkillsController < ApplicationController
  before_action :set_class_skill, only: [:show, :edit, :update, :destroy]

  # GET /class_skills
  # GET /class_skills.json
  def index
    @class_skills = ClassSkill.all
  end

  # GET /class_skills/1
  # GET /class_skills/1.json
  def show
  end

  # GET /class_skills/new
  def new
    @class_skill = ClassSkill.new
  end

  # GET /class_skills/1/edit
  def edit
  end

  # POST /class_skills
  # POST /class_skills.json
  def create
    @class_skill = ClassSkill.new(class_skill_params)

    respond_to do |format|
      if @class_skill.save
        format.html { redirect_to @class_skill, notice: 'Class skill was successfully created.' }
        format.json { render :show, status: :created, location: @class_skill }
      else
        format.html { render :new }
        format.json { render json: @class_skill.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /class_skills/1
  # PATCH/PUT /class_skills/1.json
  def update
    respond_to do |format|
      if @class_skill.update(class_skill_params)
        format.html { redirect_to @class_skill, notice: 'Class skill was successfully updated.' }
        format.json { render :show, status: :ok, location: @class_skill }
      else
        format.html { render :edit }
        format.json { render json: @class_skill.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /class_skills/1
  # DELETE /class_skills/1.json
  def destroy
    @class_skill.destroy
    respond_to do |format|
      format.html { redirect_to class_skills_url, notice: 'Class skill was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_class_skill
      @class_skill = ClassSkill.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def class_skill_params
      params.require(:class_skill).permit(:character_class_id, :skill_id)
    end
end
