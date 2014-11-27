class Contacto < ActiveRecord::Base
	validates :nombre, :correo_electronico, :telefono, :mensaje, presence: true
	validates :telefono, numericality: { only_integer: true}
end
