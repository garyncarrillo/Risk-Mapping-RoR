class Api::TipoProcedimientosController < ApplicationController

	def get_Tipo 
		@tipos_procedimientos = TipoObjetivo.all
		render json:{back_end: @tipos_procedimientos}, status: :ok  
	end 
	def get_paquetes
        @paquete_plans = PaquetePlan.all
        render json:{back_end: @paquete_plans}, status: :ok  
    end 
  	def get_procesos
        @procesos = Proceso.all
        render json:{back_end: @procesos}, status: :ok  
 	end
  	def get_procedimientos
        @procesos = @procedimientos = Procedimiento.all
        render json:{back_end: @procesos}, status: :ok  
 	end
end
