json.array!(@portafolios) do |portafolio|
  json.extract! portafolio, :id, :titulo_portafolio, :descripcion_portafolio
  json.url portafolio_url(portafolio, format: :json)
end
