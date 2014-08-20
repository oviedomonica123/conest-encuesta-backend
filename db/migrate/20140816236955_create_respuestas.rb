class CreateRespuestas < ActiveRecord::Migration
  def change
    create_table :respuestas do |t|
      t.references :consulta, index: true
      t.references :pregunta, index: true
      t.string :valor_respuesta, limit: 45, null: false

      t.timestamps
    end
  end
end
