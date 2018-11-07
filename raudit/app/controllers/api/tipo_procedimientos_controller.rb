class Api::TipoProcedimientosController < ApplicationController

	def get_Tipo 
		@tipos_procedimientos = TiposProcedimiento.all
		render json:{back_end: @tipos_procedimientos}, status: :ok  
	end 
end
