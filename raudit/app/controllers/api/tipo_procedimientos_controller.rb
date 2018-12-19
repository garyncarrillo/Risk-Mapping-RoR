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

    def get_procedimiento_x_paquete
        @name_paquete =  params[:nombre_paquete]
        @paquete = PaquetePlan.where(nombre:@name_paquete)
        @paquete.each do |paquetes|
            @id_paquete = paquetes.id
        end
        if @id_paquete.blank? then
            error = [{"id":"-909","nombre":"no se pueden cargar los procedimieto del paquete seleccionado"}]
            @lista_procedimiento = error
        else
            @lista_procedimiento = PaquetePlanToProcedimiento.where(idpaquete:@id_paquete).joins("LEFT JOIN Procedimientos ON Procedimientos.id = paquete_plan_to_procedimientos.idprocedimiento").select("paquete_plan_to_procedimientos.id as P_Key, paquete_plan_to_procedimientos.idpaquete , paquete_plan_to_procedimientos.idprocedimiento ,Procedimientos.nombre , Procedimientos.id")

        end 
        
       render json:{back_end: @lista_procedimiento }, status: :ok    
    end 

    def eliminar_procedimiento_x_paquete
        @name_paquete =  params[:nombre_paquete]
        @name_procedimiento =  params[:nombre_procedimiento]
        @paquete = PaquetePlan.where(nombre:@name_paquete)
        @paquete.each do |paquetes|
            @id_paquete = paquetes.id
        end
        @procedimientos = Procedimiento.where(nombre:@name_procedimiento)
        @procedimientos.each do |procedimiento|
            @id_procedimieto = procedimiento.id
        end
        if @id_paquete.blank? or @id_procedimieto.blank? then 
             @eliminar = [{"id":"-909","nombre":"no existe la relacion de procedimiento paquete para eliminarlo"}]
        else
           @eliminar = PaquetePlanToProcedimiento.where(idpaquete:@id_paquete , idprocedimiento:@id_procedimieto ).destroy_all
        end
        render json:{back_end: @eliminar }, status: :ok    
    end     

    def get_plan_auditoria
        @ano_plan =  params[:ano_plan]    
        @plan = PaquetePlan.where(ano:@ano_plan).joins("LEFT JOIN paquete_plan_to_procedimientos ON paquete_plans.id= paquete_plan_to_procedimientos.idpaquete LEFT JOIN  Procedimientos ON Procedimientos.id = paquete_plan_to_procedimientos.idprocedimiento LEFT JOIN paquetes_plan_to_fechas ON paquetes_plan_to_fechas.idpaquete=paquete_plans.id ").select(" paquete_plans.id as id_paquete, paquete_plans.nombre as nombre_paquete,Procedimientos.id ,Procedimientos.nombre nombre_procedimiento , paquetes_plan_to_fechas.responsable, fecha_plan_i,   fecha_plan_f , dias ,comentarios ").order("paquetes_plan_to_fechas.fecha_plan_i desc")
        render json:{back_end: @plan }, status: :ok    
    end 
end
