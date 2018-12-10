require 'json'

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
  		@id_process =  params[:idprocesos]
        @procesos = @procedimientos = Procedimiento.where(idprocesos:@id_process)
        render json:{back_end: @procesos}, status: :ok  
 	end

 	def get_procedimiento_x_procesos
 		@name_process =  params[:nombre]
 		@procesos_id = Proceso.where(nombre:@name_process)
 		print @procesos_id
 		render json:{back_end: @procesos_id}, status: :ok  
    end 

    def set_paquetes_x_procedimientos
    	@name_paquete =  params[:nombre_paquete]
    	@name_proceso =  params[:nombre_proceso]
    	@name_procedimiento =  params[:procedimiento]
    	@procedimientos = Procedimiento.where(nombre:@name_procedimiento)
        
        @procedimientos.each do |procedimiento|
        	@id_procedimieto = procedimiento.id
        end
       
       	@paquete = PaquetePlan.where(nombre:@name_paquete)

        @paquete.each do |paquetes|
        	@id_paquete = paquetes.id
        end
        if @id_paquete.blank? or @id_procedimieto.blank? then 
        	# para validar si es  null o no 
        	# if @object.present? then 
        	error = [{"id":"-909","nombre":"el procedimiento o paquete no existe en la base de datos"}]
        	@procedimientos = error
        else
           @create_paquete_to_procedimiento = PaquetePlanToProcedimiento.create(idpaquete:@id_paquete, idprocedimiento:@id_procedimieto)
           puts 'Se creo correctamente'
        end 
        #http://localhost:3000/api/setpaquetes_x_procedimiento?nombre_paquete=Proyectos&nombre_proceso=vivienda&procedimiento=Procedimiento%20Administraci%C3%B3n%20de%20Versiones%20V2
    	render json:{back_end: @procedimientos }, status: :ok  
    end
end
