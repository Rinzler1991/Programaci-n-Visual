class BlogController < ApplicationController
	def index
		@mensajes = Mensaje.paginate(:page => params[:page], :per_page => 30)
		@cantidadMensajes = Mensaje.count
	end	
	def nuevo_mensaje
		@mensaje = Mensaje.new		
	end
	def guardar_mensaje		
		#Inicializamos objeto
		@mensaje = Mensaje.new(mensaje_params)
		#Guardamos el mensaje en la bd

		#Condicion para evaluar si se cumplieron las validaciones
		if	@mensaje.save
			#Todas las validaciones se cumplieron y se inserta el mensaje nuevo
			flash[:aviso] = "Mensaje guardado con éxito."			
			redirect_to :action => 'index'
		else
			#No se cumplieron las validaciones y se regresa al formulario
			flash[:aviso] = "Error, ¡porfavor verifica los datos!"
			render :action => 'nuevo_mensaje'
		end
	end

private

	def mensaje_params
		params.require(:mensaje).permit(:titulo, :descripcion)	
	end

end
