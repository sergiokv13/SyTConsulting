json.array!(@acontecimientos) do |acontecimiento|
  json.extract! acontecimiento, :id, :periodo_acontecimiento, :titulo_acontecimiento, :descripcion_acontecimiento
  json.url acontecimiento_url(acontecimiento, format: :json)
end
