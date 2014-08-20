json.array!(@controles_consultas) do |control_consulta|
  json.extract! control_consulta, :id, :oferta_academica_id, :estudiante_id
  json.url control_consulta_url(control_consulta, format: :json)
end
