class Servicio < ActiveRecord::Base
	validates :nombre_servicio, :descripcion_servicio, presence: true
end
