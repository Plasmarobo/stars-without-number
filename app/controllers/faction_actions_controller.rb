class FactionActionsController < ApplicationController
  before_action :set_faction_action, only: [:show, :edit, :update, :destroy]

  # GET /faction_actions
  # GET /faction_actions.json
  def index
    @faction_actions = FactionAction.all
  end

  # GET /faction_actions/1
  # GET /faction_actions/1.json
  def show
  end

  # GET /faction_actions/new
  def new
    @faction_action = FactionAction.new
  end

  # GET /faction_actions/1/edit
  def edit
  end

  # POST /faction_actions
  # POST /faction_actions.json
  def create
    @faction_action = FactionAction.new(faction_action_params)

    respond_to do |format|
      if @faction_action.save
        format.html { redirect_to @faction_action, notice: 'Faction action was successfully created.' }
        format.json { render :show, status: :created, location: @faction_action }
      else
        format.html { render :new }
        format.json { render json: @faction_action.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /faction_actions/1
  # PATCH/PUT /faction_actions/1.json
  def update
    respond_to do |format|
      if @faction_action.update(faction_action_params)
        format.html { redirect_to @faction_action, notice: 'Faction action was successfully updated.' }
        format.json { render :show, status: :ok, location: @faction_action }
      else
        format.html { render :edit }
        format.json { render json: @faction_action.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /faction_actions/1
  # DELETE /faction_actions/1.json
  def destroy
    @faction_action.destroy
    respond_to do |format|
      format.html { redirect_to faction_actions_url, notice: 'Faction action was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_faction_action
      @faction_action = FactionAction.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def faction_action_params
      params.require(:faction_action).permit(:faction_turn_id, :free, :action)
    end
end
