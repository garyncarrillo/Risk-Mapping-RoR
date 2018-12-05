class PaquetePlanToProcedimientosController < ApplicationController
  before_action :set_paquete_plan_to_procedimiento, only: [:show, :edit, :update, :destroy]

  # GET /paquete_plan_to_procedimientos
  # GET /paquete_plan_to_procedimientos.json
  def index
    @paquete_plan_to_procedimientos = PaquetePlanToProcedimiento.all
  end

  # GET /paquete_plan_to_procedimientos/1
  # GET /paquete_plan_to_procedimientos/1.json
  def show
  end

  # GET /paquete_plan_to_procedimientos/new
  def new
    @paquete_plan_to_procedimiento = PaquetePlanToProcedimiento.new
  end

  # GET /paquete_plan_to_procedimientos/1/edit
  def edit
  end

  # POST /paquete_plan_to_procedimientos
  # POST /paquete_plan_to_procedimientos.json
  def create
    @paquete_plan_to_procedimiento = PaquetePlanToProcedimiento.new(paquete_plan_to_procedimiento_params)

    respond_to do |format|
      if @paquete_plan_to_procedimiento.save
        format.html { redirect_to @paquete_plan_to_procedimiento, notice: 'Paquete plan to procedimiento was successfully created.' }
        format.json { render :show, status: :created, location: @paquete_plan_to_procedimiento }
      else
        format.html { render :new }
        format.json { render json: @paquete_plan_to_procedimiento.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /paquete_plan_to_procedimientos/1
  # PATCH/PUT /paquete_plan_to_procedimientos/1.json
  def update
    respond_to do |format|
      if @paquete_plan_to_procedimiento.update(paquete_plan_to_procedimiento_params)
        format.html { redirect_to @paquete_plan_to_procedimiento, notice: 'Paquete plan to procedimiento was successfully updated.' }
        format.json { render :show, status: :ok, location: @paquete_plan_to_procedimiento }
      else
        format.html { render :edit }
        format.json { render json: @paquete_plan_to_procedimiento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /paquete_plan_to_procedimientos/1
  # DELETE /paquete_plan_to_procedimientos/1.json
  def destroy
    @paquete_plan_to_procedimiento.destroy
    respond_to do |format|
      format.html { redirect_to paquete_plan_to_procedimientos_url, notice: 'Paquete plan to procedimiento was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_paquete_plan_to_procedimiento
      @paquete_plan_to_procedimiento = PaquetePlanToProcedimiento.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def paquete_plan_to_procedimiento_params
      params.require(:paquete_plan_to_procedimiento).permit(:idpaquete, :idprocedimiento)
    end
end
