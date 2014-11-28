json.array!(@informacions) do |informacion|
  json.extract! informacion, :id, :contenido_informacion
  json.url informacion_url(informacion, format: :json)
end
