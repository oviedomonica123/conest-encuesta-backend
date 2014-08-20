json.array!(@opciones) do |opcion|
  json.extract! opcion, :id, :etiqueta, :valor
  json.url opcion_url(opcion, format: :json)
end
