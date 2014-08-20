class CreateOfertasAcademica < ActiveRecord::Migration
  def change
    create_table :ofertas_academica do |t|
      t.references :oferta_periodo, index: true
      t.string :nombre_seccion, limit: 10, null: false
      t.references :docente, index: true
      t.string :promedio_general, limit: 45, null: true
      t.integer :nro_estudiantes, limit: 4, null: true
      t.integer :nro_estudiantes_retirados, limit: 4, null: true
      t.integer :nro_estudiantes_aprobados, limit: 4, null: true
      t.integer :nro_estudiantes_equivalencia, limit: 4, null: true
      t.integer :nro_estudiantes_suficiencia, limit: 4, null: true
      t.integer :nro_estudiantes_reparacion, limit: 4, null: true
      t.integer :nro_estudiantes_aplazados, limit: 4, null: true
      t.string :tipo_estatus_calificaion_id, limit: 10, null: true

      t.timestamps
    end
  end
end
