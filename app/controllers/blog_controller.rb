class BlogController < ApplicationController
	def index
		@mensajes = Mensaje.paginate(:page => params[:page], :per_page => 8)
		@cantidadMensajes = Mensaje.count
	end
	def nuevo_mensaje
		@mensaje = Mensaje.new
	end
	def guardar_mensaje
		#inicializamos objeto
		@mensaje = Mensaje.new(mensaje_params)
		#guardamos el mensaje en la bd
		
		#condicion para evaluar si se cumplieron las validaciones
		if @mensaje.save
			 flash[:notice] = "Mensaje guardado con exito"
			#todas las validaciones se cumplieron y se inserto el mensaje en la bd
			redirect_to :action => 'index'
		else
			flash[:notice] = "Error por favor verifica los datos"
			#no se cumplieron las validaciones y regresa al usuario al formulario
			render :action => 'nuevo_mensaje'
		end
	end

private
	def mensaje_params
		params.require(:mensaje).permit(:titulo, :descripcion, :imagen)
	end

end
