class AddDataToTypestadistic < ActiveRecord::Migration
  def up
  	execute "insert into typestadistics (name, created_at, updated_at) values ('Conversos Bautizados', '2014-01-29T3:00:00.000', '2014-01-29T3:00:00.000')"
  	execute "insert into typestadistics (name, created_at, updated_at) values ('Recomendaciones Misionales Enviadas', '2014-01-29T3:00:00.000', '2014-01-29T3:00:00.000')"
  	execute "insert into typestadistics (name, created_at, updated_at) values ('Elderes Ordenados', '2014-01-29T3:00:00.000', '2014-01-29T3:00:00.000')"
  	execute "insert into typestadistics (name, created_at, updated_at) values ('Sac. Aaronicos Ordenados', '2014-01-29T3:00:00.000', '2014-01-29T3:00:00.000')"
  	execute "insert into typestadistics (name, created_at, updated_at) values ('Miembros que Reciben su Propia Investidura', '2014-01-29T3:00:00.000', '2014-01-29T3:00:00.000')"
  	execute "insert into typestadistics (name, created_at, updated_at) values ('Parejas que se Sellaron', '2014-01-29T3:00:00.000', '2014-01-29T3:00:00.000')"
  	execute "insert into typestadistics (name, created_at, updated_at) values ('Recomendaciones al Templo que se Renovaron', '2014-01-29T3:00:00.000', '2014-01-29T3:00:00.000')"
  	execute "insert into typestadistics (name, created_at, updated_at) values ('Asistencia a la Reunion Sacramental', '2014-01-29T3:00:00.000', '2014-01-29T3:00:00.000')"
  end

  def down
  end
end
