class TrainingSkillsController < ApplicationController
  before_action :set_training_skill, only: [:show, :edit, :update, :destroy]

  # GET /training_skills
  # GET /training_skills.json
  def index
    @training_skills = TrainingSkill.all
  end

  # GET /training_skills/1
  # GET /training_skills/1.json
  def show
  end

  # GET /training_skills/new
  def new
    @training_skill = TrainingSkill.new
  end

  # GET /training_skills/1/edit
  def edit
  end

  # POST /training_skills
  # POST /training_skills.json
  def create
    @training_skill = TrainingSkill.new(training_skill_params)

    respond_to do |format|
      if @training_skill.save
        format.html { redirect_to @training_skill, notice: 'Training skill was successfully created.' }
        format.json { render :show, status: :created, location: @training_skill }
      else
        format.html { render :new }
        format.json { render json: @training_skill.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /training_skills/1
  # PATCH/PUT /training_skills/1.json
  def update
    respond_to do |format|
      if @training_skill.update(training_skill_params)
        format.html { redirect_to @training_skill, notice: 'Training skill was successfully updated.' }
        format.json { render :show, status: :ok, location: @training_skill }
      else
        format.html { render :edit }
        format.json { render json: @training_skill.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /training_skills/1
  # DELETE /training_skills/1.json
  def destroy
    @training_skill.destroy
    respond_to do |format|
      format.html { redirect_to training_skills_url, notice: 'Training skill was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_training_skill
      @training_skill = TrainingSkill.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def training_skill_params
      params.require(:training_skill).permit(:training_id, :skill_id)
    end
end
