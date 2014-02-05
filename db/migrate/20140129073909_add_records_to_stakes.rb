class AddRecordsToStakes < ActiveRecord::Migration
  def up
  	execute "insert into stakes (name, created_at, updated_at, region_id) values ('Olanchito', '2014-01-29T2:00:00.000', '2014-01-29T2:00:00.000', 1)"
  	execute "insert into stakes (name, created_at, updated_at, region_id) values ('La Ceiba', '2014-01-29T2:00:00.000', '2014-01-29T2:00:00.000', 1)"
  	execute "insert into stakes (name, created_at, updated_at, region_id) values ('El Progreso', '2014-01-29T2:00:00.000', '2014-01-29T2:00:00.000', 1)"
  	execute "insert into stakes (name, created_at, updated_at, region_id) values ('La Lima', '2014-01-29T2:00:00.000', '2014-01-29T2:00:00.000', 1)"
  	execute "insert into stakes (name, created_at, updated_at, region_id) values ('Satelite', '2014-01-29T2:00:00.000', '2014-01-29T2:00:00.000', 1)"
  	execute "insert into stakes (name, created_at, updated_at, region_id) values ('Mision Este', '2014-01-29T2:00:00.000', '2014-01-29T2:00:00.000', 1)"

  	execute "insert into stakes (name, created_at, updated_at, region_id) values ('Choloma', '2014-01-29T2:00:00.000', '2014-01-29T2:00:00.000', 2)"
  	execute "insert into stakes (name, created_at, updated_at, region_id) values ('El Merendon', '2014-01-29T2:00:00.000', '2014-01-29T2:00:00.000', 2)"
  	execute "insert into stakes (name, created_at, updated_at, region_id) values ('Fesitrahn', '2014-01-29T2:00:00.000', '2014-01-29T2:00:00.000', 2)"
  	execute "insert into stakes (name, created_at, updated_at, region_id) values ('San Pedro Sula', '2014-01-29T2:00:00.000', '2014-01-29T2:00:00.000', 2)"
  	execute "insert into stakes (name, created_at, updated_at, region_id) values ('Valle de Sula', '2014-01-29T2:00:00.000', '2014-01-29T2:00:00.000', 2)"
  	execute "insert into stakes (name, created_at, updated_at, region_id) values ('Villanueva', '2014-01-29T2:00:00.000', '2014-01-29T2:00:00.000', 2)"
  	execute "insert into stakes (name, created_at, updated_at, region_id) values ('Santa Rosa de Copan', '2014-01-29T2:00:00.000', '2014-01-29T2:00:00.000', 2)"
  	execute "insert into stakes (name, created_at, updated_at, region_id) values ('Mision Oeste', '2014-01-29T2:00:00.000', '2014-01-29T2:00:00.000', 2)"
  end

  def down
  end
end
