class AddRecordsToTables < ActiveRecord::Migration
  def up
  	execute "insert into regions (name, created_at, updated_at) values ('San Pedro Sula ESTE', '2014-01-29T2:00:00.000', '2014-01-29T2:00:00.000')"
  	execute "insert into regions (name, created_at, updated_at) values ('San Pedro Sula OESTE', '2014-01-29T2:00:00.000', '2014-01-29T2:00:00.000')"
  end

  def down
  end
end
