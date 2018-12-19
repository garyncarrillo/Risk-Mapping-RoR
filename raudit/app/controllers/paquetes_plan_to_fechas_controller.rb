class PaquetesPlanToFechasController < ApplicationController
  before_action :set_paquetes_plan_to_fecha, only: [:show, :edit, :update, :destroy]

  # GET /paquetes_plan_to_fechas
  # GET /paquetes_plan_to_fechas.json
  def index
    @paquetes_plan_to_fechas = PaquetesPlanToFecha.all
  end

  # GET /paquetes_plan_to_fechas/1
  # GET /paquetes_plan_to_fechas/1.json
  def show
  end

  # GET /paquetes_plan_to_fechas/new
  def new
    @paquetes_plan_to_fecha = PaquetesPlanToFecha.new
  end

  # GET /paquetes_plan_to_fechas/1/edit
  def edit
  end

  # POST /paquetes_plan_to_fechas
  # POST /paquetes_plan_to_fechas.json
  def create
    @paquetes_plan_to_fecha = PaquetesPlanToFecha.new(paquetes_plan_to_fecha_params)

    respond_to do |format|
      if @paquetes_plan_to_fecha.save
        format.html { redirect_to @paquetes_plan_to_fecha, notice: 'Paquetes plan to fecha was successfully created.' }
        format.json { render :show, status: :created, location: @paquetes_plan_to_fecha }
      else
        format.html { render :new }
        format.json { render json: @paquetes_plan_to_fecha.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /paquetes_plan_to_fechas/1
  # PATCH/PUT /paquetes_plan_to_fechas/1.json
  def update
    respond_to do |format|
      if @paquetes_plan_to_fecha.update(paquetes_plan_to_fecha_params)
        format.html { redirect_to @paquetes_plan_to_fecha, notice: 'Paquetes plan to fecha was successfully updated.' }
        format.json { render :show, status: :ok, location: @paquetes_plan_to_fecha }
      else
        format.html { render :edit }
        format.json { render json: @paquetes_plan_to_fecha.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /paquetes_plan_to_fechas/1
  # DELETE /paquetes_plan_to_fechas/1.json
  def destroy
    @paquetes_plan_to_fecha.destroy
    respond_to do |format|
      format.html { redirect_to paquetes_plan_to_fechas_url, notice: 'Paquetes plan to fecha was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_paquetes_plan_to_fecha
      @paquetes_plan_to_fecha = PaquetesPlanToFecha.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def paquetes_plan_to_fecha_params
      params.require(:paquetes_plan_to_fecha).permit(:idpaquete, :responsable, :fecha_plan_i, :fecha_plan_f, :fecha_inicio, :fecha_fin, :dias, :comentarios)
    end
end
