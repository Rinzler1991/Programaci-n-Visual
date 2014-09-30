class Mensaje < ActiveRecord::Base
	validates :titulo,:descripcion, presence: true
end
