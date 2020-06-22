class RubricAspectsController < ApplicationController
  before_action :set_rubric_aspect, only: [:show, :edit, :update, :destroy]

  # GET /rubric_aspects
  # GET /rubric_aspects.json
  def index
    @rubric_aspects = RubricAspect.all
  end

  # GET /rubric_aspects/1
  # GET /rubric_aspects/1.json
  def show
  end

  # GET /rubric_aspects/new
  def new
    @rubric_aspect = RubricAspect.new
  end

  # GET /rubric_aspects/1/edit
  def edit
  end

  # POST /rubric_aspects
  # POST /rubric_aspects.json
  def create
    @rubric_aspect = RubricAspect.new(rubric_aspect_params)

    respond_to do |format|
      if @rubric_aspect.save
        format.html { redirect_to @rubric_aspect, notice: 'Rubric aspect was successfully created.' }
        format.json { render :show, status: :created, location: @rubric_aspect }
      else
        format.html { render :new }
        format.json { render json: @rubric_aspect.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rubric_aspects/1
  # PATCH/PUT /rubric_aspects/1.json
  def update
    respond_to do |format|
      if @rubric_aspect.update(rubric_aspect_params)
        format.html { redirect_to @rubric_aspect, notice: 'Rubric aspect was successfully updated.' }
        format.json { render :show, status: :ok, location: @rubric_aspect }
      else
        format.html { render :edit }
        format.json { render json: @rubric_aspect.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rubric_aspects/1
  # DELETE /rubric_aspects/1.json
  def destroy
    @rubric_aspect.destroy
    respond_to do |format|
      format.html { redirect_to rubric_aspects_url, notice: 'Rubric aspect was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rubric_aspect
      @rubric_aspect = RubricAspect.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def rubric_aspect_params
      params.require(:rubric_aspect).permit(:name)
    end
end
