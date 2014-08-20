class CreatePeriodosAcademico < ActiveRecord::Migration
  def change
    create_table :periodos_academico do |t|
      t.string :periodo, limit: 10, null: false
      t.string :hash_sum, limit: 255, null: true
      t.datetime :ultima_sincronizacion, null: true

      t.timestamps
    end
  end
end
