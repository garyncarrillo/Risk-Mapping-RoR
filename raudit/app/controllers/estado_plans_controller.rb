class EstadoPlansController < ApplicationController
  before_action :set_estado_plan, only: [:show, :edit, :update, :destroy]

  # GET /estado_plans
  # GET /estado_plans.json
  def index
    @estado_plans = EstadoPlan.all
  end

  # GET /estado_plans/1
  # GET /estado_plans/1.json
  def show
  end

  # GET /estado_plans/new
  def new
    @estado_plan = EstadoPlan.new
  end

  # GET /estado_plans/1/edit
  def edit
  end

  # POST /estado_plans
  # POST /estado_plans.json
  def create
    @estado_plan = EstadoPlan.new(estado_plan_params)

    respond_to do |format|
      if @estado_plan.save
        format.html { redirect_to @estado_plan, notice: 'Estado plan was successfully created.' }
        format.json { render :show, status: :created, location: @estado_plan }
      else
        format.html { render :new }
        format.json { render json: @estado_plan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /estado_plans/1
  # PATCH/PUT /estado_plans/1.json
  def update
    respond_to do |format|
      if @estado_plan.update(estado_plan_params)
        format.html { redirect_to @estado_plan, notice: 'Estado plan was successfully updated.' }
        format.json { render :show, status: :ok, location: @estado_plan }
      else
        format.html { render :edit }
        format.json { render json: @estado_plan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /estado_plans/1
  # DELETE /estado_plans/1.json
  def destroy
    @estado_plan.destroy
    respond_to do |format|
      format.html { redirect_to estado_plans_url, notice: 'Estado plan was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_estado_plan
      @estado_plan = EstadoPlan.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def estado_plan_params
      params.require(:estado_plan).permit(:descripcion, :idestado)
    end
end
