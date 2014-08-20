class CreatePreguntas < ActiveRecord::Migration
  def change
    create_table :preguntas do |t|
      t.string :interrogante, limit: 100, null: false
      t.string :descripcion, limit: 255, null: true
      t.references :tipo_pregunta, index: true

      t.timestamps
    end
  end
end
