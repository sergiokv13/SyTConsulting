class Acontecimiento < ActiveRecord::Base
	has_attached_file :foto
  	validates_attachment_content_type :foto, :content_type => /\Aimage\/.*\Z/
	validates :periodo_acontecimiento, :titulo_acontecimiento, :descripcion_acontecimiento, presence: true
end
