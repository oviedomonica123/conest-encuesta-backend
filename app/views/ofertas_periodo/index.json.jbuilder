json.array!(@ofertas_periodo) do |oferta_periodo|
  json.extract! oferta_periodo, :id, :materia_codigo, :periodo_academico_id, :docente_coordinador
  json.url oferta_periodo_url(oferta_periodo, format: :json)
end
