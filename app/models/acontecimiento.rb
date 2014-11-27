class Acontecimiento < ActiveRecord::Base
	validates :periodo_acontecimiento, :titulo_acontecimiento, :descripcion_acontecimiento, presence: true
end
