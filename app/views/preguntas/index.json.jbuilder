json.array!(@preguntas) do |pregunta|
  json.extract! pregunta, :id, :interrogante, :descripcion
  json.url pregunta_url(pregunta, format: :json)
end
