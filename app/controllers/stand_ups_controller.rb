class StandUpsController < ApplicationController
  before_action :set_stand_up, only: [:show, :update, :destroy]

  # GET /stand_ups
  def index
    @stand_ups = StandUp.all

    render json: @stand_ups
  end

  # GET /stand_ups/1
  def show
    render json: @stand_up
  end

  # POST /stand_ups
  def create
    @stand_up = StandUp.new(stand_up_params)

    if @stand_up.save
      render json: @stand_up, status: :created, location: @stand_up
    else
      render json: @stand_up.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /stand_ups/1
  def update
    if @stand_up.update(stand_up_params)
      render json: @stand_up
    else
      render json: @stand_up.errors, status: :unprocessable_entity
    end
  end

  # DELETE /stand_ups/1
  def destroy
    @stand_up.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stand_up
      @stand_up = StandUp.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def stand_up_params
      params.require(:stand_up).permit(:id, :date, :scrum_master, :team)
    end
end
