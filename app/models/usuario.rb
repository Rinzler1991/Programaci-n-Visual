class Usuario < ActiveRecord::Base
	:nombre, :email, presence: true 
	has_many :mensajes
	has_secure_password
end
