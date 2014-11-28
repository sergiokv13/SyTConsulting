json.array!(@certificacions) do |certificacion|
  json.extract! certificacion, :id, :titulo_certificacion, :descripcion_certificacion
  json.url certificacion_url(certificacion, format: :json)
end
