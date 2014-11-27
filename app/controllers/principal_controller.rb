class PrincipalController < ApplicationController
  def index
  	@contacto = Contacto.new
  	@servicios = Servicio.all
  	@acontecimientos = Acontecimiento.all
  end
end
