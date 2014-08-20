class CreateControlesConsultas < ActiveRecord::Migration
  def change
  	create_join_table :estudiantes, :ofertas_academicas
  end
end
