class CreateConsultas < ActiveRecord::Migration
  def change
    create_table :consultas do |t|
      t.references :oferta_academica, index: true
      t.references :instrumento, index: true

      t.timestamps
    end
  end
end
