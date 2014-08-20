class CreateCarreras < ActiveRecord::Migration
  def change
    create_table :carreras do |t|
      t.string :codigo, limit: 10, null: false
      t.string :nombre, limit: 255, null: false
      t.string :organizacion_id, limit: 10, null: false
    end
  end
end
