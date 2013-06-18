# encoding: utf-8
class Event < ActiveRecord::Base
  attr_accessible :description, :is_public, :name, :place, :celebrated_at, :invited_group

  validates :name, :presence => {:message => "Debe llenar la ocasión"}
  validates :is_public, :presence => {:message => "El tipo de evento es obligatorio"}
  validates :place, :presence => {:message => "Debe especificar donde será el evento"}
  validates :celebrated_at, :presence => {:message => "Debe especificar cuando será el evento"}
end
