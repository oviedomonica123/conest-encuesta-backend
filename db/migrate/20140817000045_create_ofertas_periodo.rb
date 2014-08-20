class CreateOfertasPeriodo < ActiveRecord::Migration
  def change
    create_table :ofertas_periodo do |t|
      t.references :materia, index: true
      t.references :periodo_academico, index: true
      t.integer :docente_coordinador, index: true

      t.timestamps
    end
  end
end
