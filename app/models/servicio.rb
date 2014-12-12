class Servicio < ActiveRecord::Base
	has_attached_file :foto
  	validates_attachment_content_type :foto, :content_type => /\Aimage\/.*\Z/
	validates :nombre_servicio, :descripcion_servicio, presence: true
end
