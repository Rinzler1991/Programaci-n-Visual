class Mensaje < ActiveRecord::Base
	 validates :titulo, :descripcion,
	 		   presence: true
	 mount_uploader :imagen, ImagenUploader
end
