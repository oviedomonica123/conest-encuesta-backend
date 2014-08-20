json.array!(@periodos_academico) do |periodo_academico|
  json.extract! periodo_academico, :id, :periodo, :ultima_sincronizacion
  json.url periodo_academico_url(periodo_academico, format: :json)
end
