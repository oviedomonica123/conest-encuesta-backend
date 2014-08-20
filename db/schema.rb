# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20140820032813) do

  create_table "bloques", force: true do |t|
    t.string   "nombre",      limit: 100, null: false
    t.string   "descripcion"
    t.string   "tipo",        limit: 1,   null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "bloques_instrumentos", id: false, force: true do |t|
    t.integer "bloque_id",      null: false
    t.integer "instrumento_id", null: false
  end

  create_table "bloques_preguntas", id: false, force: true do |t|
    t.integer "bloque_id",   null: false
    t.integer "pregunta_id", null: false
  end

  create_table "carreras", force: true do |t|
    t.string "codigo",          limit: 10, null: false
    t.string "nombre",                     null: false
    t.string "organizacion_id", limit: 10, null: false
  end

  create_table "consultas", force: true do |t|
    t.integer  "oferta_academica_id"
    t.integer  "instrumento_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "consultas", ["instrumento_id"], name: "index_consultas_on_instrumento_id"
  add_index "consultas", ["oferta_academica_id"], name: "index_consultas_on_oferta_academica_id"

  create_table "docentes", force: true do |t|
    t.string "cedula"
    t.string "primer_nombre",    limit: 45, null: false
    t.string "segundo_nombre",   limit: 45
    t.string "primer_apellido",  limit: 45, null: false
    t.string "segundo_apellido", limit: 45
  end

  create_table "estudiantes", force: true do |t|
    t.string "cedula"
    t.string "primer_nombre",    limit: 45, null: false
    t.string "segundo_nombre",   limit: 45
    t.string "primer_apellido",  limit: 45, null: false
    t.string "segundo_apellido", limit: 45
  end

  create_table "estudiantes_ofertas_academicas", id: false, force: true do |t|
    t.integer "estudiante_id",        null: false
    t.integer "oferta_academicas_id", null: false
  end

  create_table "instrumentos", force: true do |t|
    t.string   "nombre",      limit: 100, null: false
    t.string   "descripcion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "materias", force: true do |t|
    t.string  "codigo",          limit: 10, null: false
    t.integer "carrera_id"
    t.string  "plan_nombre",     limit: 20, null: false
    t.string  "nombre",                     null: false
    t.string  "tipo_materia_id", limit: 10, null: false
    t.string  "grupo_nota_id",   limit: 10, null: false
  end

  add_index "materias", ["carrera_id"], name: "index_materias_on_carrera_id"

  create_table "ofertas_academica", force: true do |t|
    t.integer  "oferta_periodo_id"
    t.string   "nombre_seccion",               limit: 10, null: false
    t.integer  "docente_id"
    t.string   "promedio_general",             limit: 45
    t.integer  "nro_estudiantes",              limit: 4
    t.integer  "nro_estudiantes_retirados",    limit: 4
    t.integer  "nro_estudiantes_aprobados",    limit: 4
    t.integer  "nro_estudiantes_equivalencia", limit: 4
    t.integer  "nro_estudiantes_suficiencia",  limit: 4
    t.integer  "nro_estudiantes_reparacion",   limit: 4
    t.integer  "nro_estudiantes_aplazados",    limit: 4
    t.string   "tipo_estatus_calificaion_id",  limit: 10
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "ofertas_academica", ["docente_id"], name: "index_ofertas_academica_on_docente_id"
  add_index "ofertas_academica", ["oferta_periodo_id"], name: "index_ofertas_academica_on_oferta_periodo_id"

  create_table "ofertas_periodo", force: true do |t|
    t.integer  "materia_id"
    t.integer  "periodo_academico_id"
    t.integer  "docente_coordinador"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "ofertas_periodo", ["materia_id"], name: "index_ofertas_periodo_on_materia_id"
  add_index "ofertas_periodo", ["periodo_academico_id"], name: "index_ofertas_periodo_on_periodo_academico_id"

  create_table "opciones", force: true do |t|
    t.string  "etiqueta",    limit: 100, null: false
    t.string  "valor",       limit: 20,  null: false
    t.integer "pregunta_id"
  end

  add_index "opciones", ["pregunta_id"], name: "index_opciones_on_pregunta_id"

  create_table "periodos_academico", force: true do |t|
    t.string   "periodo",               limit: 10, null: false
    t.string   "hash_sum"
    t.datetime "ultima_sincronizacion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "preguntas", force: true do |t|
    t.string   "interrogante",     limit: 100, null: false
    t.string   "descripcion"
    t.integer  "tipo_pregunta_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "preguntas", ["tipo_pregunta_id"], name: "index_preguntas_on_tipo_pregunta_id"

  create_table "respuestas", force: true do |t|
    t.integer  "consulta_id"
    t.integer  "pregunta_id"
    t.string   "valor_respuesta", limit: 45, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "respuestas", ["consulta_id"], name: "index_respuestas_on_consulta_id"
  add_index "respuestas", ["pregunta_id"], name: "index_respuestas_on_pregunta_id"

  create_table "tipos_pregunta", force: true do |t|
    t.string "nombre",     limit: 45, null: false
    t.string "valor",      limit: 45, null: false
    t.string "valor_html", limit: 45, null: false
  end

  create_table "tokens", force: true do |t|
    t.string   "token",      limit: 45, null: false
    t.string   "hash_sum"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
