json.array!(@servicios) do |servicio|
  json.extract! servicio, :id, :nombre_servicio, :descripcion_servicio
  json.url servicio_url(servicio, format: :json)
end
