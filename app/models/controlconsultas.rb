class ControlConsultas < ActiveRecord::Base
  belongs_to :oferta_academica
  belongs_to :estudiante
end
