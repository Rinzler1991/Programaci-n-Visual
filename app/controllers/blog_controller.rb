class BlogController < ApplicationController
	def index
		#crear un registro
		registro = Mensaje.new
		registro.titulo="Primer titulo"
		registro.descripcion="Mi primera descripcion"
		registro.save

		#manda el primer registro de la bd
		@mensaje = Mensaje.first

		#manda la cantidad de registros en la tabla mensajes
		@cantidad = Mensaje.count

		#Hora y fecha
		@currentTime = Time.now
	end

end