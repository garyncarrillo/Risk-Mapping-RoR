class PaquetePlansController < ApplicationController
  before_action :set_paquete_plan, only: [:show, :edit, :update, :destroy]

  # GET /paquete_plans
  # GET /paquete_plans.json
  def index
    @paquete_plans = PaquetePlan.all
  end

  # GET /paquete_plans/1
  # GET /paquete_plans/1.json
  def show
  end

  # GET /paquete_plans/new
  def new
    @paquete_plan = PaquetePlan.new
  end

  # GET /paquete_plans/1/edit
  def edit
  end

  # POST /paquete_plans
  # POST /paquete_plans.json
  def create
    @paquete_plan = PaquetePlan.new(paquete_plan_params)

    respond_to do |format|
      if @paquete_plan.save
        format.html { redirect_to @paquete_plan, notice: 'Paquete plan was successfully created.' }
        format.json { render :show, status: :created, location: @paquete_plan }
      else
        format.html { render :new }
        format.json { render json: @paquete_plan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /paquete_plans/1
  # PATCH/PUT /paquete_plans/1.json
  def update
    respond_to do |format|
      if @paquete_plan.update(paquete_plan_params)
        format.html { redirect_to @paquete_plan, notice: 'Paquete plan was successfully updated.' }
        format.json { render :show, status: :ok, location: @paquete_plan }
      else
        format.html { render :edit }
        format.json { render json: @paquete_plan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /paquete_plans/1
  # DELETE /paquete_plans/1.json
  def destroy
    @paquete_plan.destroy
    respond_to do |format|
      format.html { redirect_to paquete_plans_url, notice: 'Paquete plan was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_paquete_plan
      @paquete_plan = PaquetePlan.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def paquete_plan_params
      params.require(:paquete_plan).permit(:nombre, :ano, :alcance)
    end
end
