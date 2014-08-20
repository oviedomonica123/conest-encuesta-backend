json.array!(@ofertas_academica) do |oferta_academica|
  json.extract! oferta_academica, :id, :materia_en_periodo_id, :nombre_seccion, :docente_cedula, :promedio_general, :nro_estudiantes, :nro_estudiantes_retirados, :nro_estudiantes_aprobados, :nro_estudiantes_equivalencia, :nro_estudiantes_suficiencia, :nro_estudiantes_reparacion, :nro_estudiantes_aplazados, :tipo_estatus_calificaion_id
  json.url oferta_academica_url(oferta_academica, format: :json)
end
