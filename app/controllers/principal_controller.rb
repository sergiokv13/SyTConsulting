class PrincipalController < ApplicationController
  def index
  	@contacto = Contacto.new
  	@servicios = Servicio.all
  	@acontecimientos = Acontecimiento.all
  	@informacion = Informacion.first
  	@certificaciones = Certificacion.all
  	@portafolios = Portafolio.all
  end
end
