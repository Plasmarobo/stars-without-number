class FactionTurnsController < ApplicationController
  before_action :set_faction_turn, only: [:show, :edit, :update, :destroy]

  # GET /faction_turns
  # GET /faction_turns.json
  def index
    @faction_turns = FactionTurn.all
  end

  # GET /faction_turns/1
  # GET /faction_turns/1.json
  def show
  end

  # GET /faction_turns/new
  def new
    @faction_turn = FactionTurn.new
  end

  # GET /faction_turns/1/edit
  def edit
  end

  # POST /faction_turns
  # POST /faction_turns.json
  def create
    @faction_turn = FactionTurn.new(faction_turn_params)

    respond_to do |format|
      if @faction_turn.save
        format.html { redirect_to @faction_turn, notice: 'Faction turn was successfully created.' }
        format.json { render :show, status: :created, location: @faction_turn }
      else
        format.html { render :new }
        format.json { render json: @faction_turn.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /faction_turns/1
  # PATCH/PUT /faction_turns/1.json
  def update
    respond_to do |format|
      if @faction_turn.update(faction_turn_params)
        format.html { redirect_to @faction_turn, notice: 'Faction turn was successfully updated.' }
        format.json { render :show, status: :ok, location: @faction_turn }
      else
        format.html { render :edit }
        format.json { render json: @faction_turn.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /faction_turns/1
  # DELETE /faction_turns/1.json
  def destroy
    @faction_turn.destroy
    respond_to do |format|
      format.html { redirect_to faction_turns_url, notice: 'Faction turn was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_faction_turn
      @faction_turn = FactionTurn.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def faction_turn_params
      params.require(:faction_turn).permit(:turn_number, :game_id, :order)
    end
end
