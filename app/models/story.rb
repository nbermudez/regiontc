# encoding: utf-8
class Story < ActiveRecord::Base
  attr_accessible :abstract, :report, :stake, :year

  mount_uploader :report, ReportUploader

  validates :stake, :presence => {:message => "Debe especificar una estaca"}
  validates :year, :presence => {:message => "Debe ingresar un año"}
  validates :report, :presence => true
  validates :abstract, :length => {:maximum => 250}
end
