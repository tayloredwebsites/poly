class PlanAspectsController < ApplicationController
  before_action :set_plan_aspect, only: [:show, :edit, :update, :destroy]

  # GET /plan_aspects
  # GET /plan_aspects.json
  def index
    @plan_aspects = PlanAspect.all
  end

  # GET /plan_aspects/1
  # GET /plan_aspects/1.json
  def show
  end

  # GET /plan_aspects/new
  def new
    @plan_aspect = PlanAspect.new
  end

  # GET /plan_aspects/1/edit
  def edit
  end

  # POST /plan_aspects
  # POST /plan_aspects.json
  def create
    @plan_aspect = PlanAspect.new(plan_aspect_params)

    respond_to do |format|
      if @plan_aspect.save
        format.html { redirect_to @plan_aspect, notice: 'Plan aspect was successfully created.' }
        format.json { render :show, status: :created, location: @plan_aspect }
      else
        format.html { render :new }
        format.json { render json: @plan_aspect.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /plan_aspects/1
  # PATCH/PUT /plan_aspects/1.json
  def update
    respond_to do |format|
      if @plan_aspect.update(plan_aspect_params)
        format.html { redirect_to @plan_aspect, notice: 'Plan aspect was successfully updated.' }
        format.json { render :show, status: :ok, location: @plan_aspect }
      else
        format.html { render :edit }
        format.json { render json: @plan_aspect.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /plan_aspects/1
  # DELETE /plan_aspects/1.json
  def destroy
    @plan_aspect.destroy
    respond_to do |format|
      format.html { redirect_to plan_aspects_url, notice: 'Plan aspect was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_plan_aspect
      @plan_aspect = PlanAspect.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def plan_aspect_params
      params.require(:plan_aspect).permit(:name)
    end
end
