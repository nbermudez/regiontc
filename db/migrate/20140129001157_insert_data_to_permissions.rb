class InsertDataToPermissions < ActiveRecord::Migration
  def up
  	execute "insert into permissions (name, description, created_at, updated_at) values ('Crear Metas', '', '2014-01-28T16:00:00.000', '2014-01-28T16:00:00.000')"
  	execute "insert into permissions (name, description, created_at, updated_at) values ('Modificar Metas', '', '2014-01-28T16:00:00.000', '2014-01-28T16:00:00.000')"
  	execute "insert into permissions (name, description, created_at, updated_at) values ('Ver Metas de Capilla', '', '2014-01-28T16:00:00.000', '2014-01-28T16:00:00.000')"
  	execute "insert into permissions (name, description, created_at, updated_at) values ('Habilitar Edicion de Metas', '', '2014-01-28T16:00:00.000', '2014-01-28T16:00:00.000')"
  	execute "insert into permissions (name, description, created_at, updated_at) values ('Ver Metas de Estaca', '', '2014-01-28T16:00:00.000', '2014-01-28T16:00:00.000')"
  	execute "insert into permissions (name, description, created_at, updated_at) values ('Crear Estadisticas de Capilla', '', '2014-01-28T16:00:00.000', '2014-01-28T16:00:00.000')"
  	execute "insert into permissions (name, description, created_at, updated_at) values ('Modificar Estadisticas de Capilla', '', '2014-01-28T16:00:00.000', '2014-01-28T16:00:00.000')"
  	execute "insert into permissions (name, description, created_at, updated_at) values ('Ver Estadisticas de Capilla', '', '2014-01-28T16:00:00.000', '2014-01-28T16:00:00.000')"
  	execute "insert into permissions (name, description, created_at, updated_at) values ('Ver Estadisticas de Estaca', '', '2014-01-28T16:00:00.000', '2014-01-28T16:00:00.000')"
  end

  def down
  end
end
