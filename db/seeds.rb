# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(:email=>"nestor.bermudez@unitec.edu", :first_name => "Nestor",
	:last_name=>"Bermudez", :password => "Girardot8", 
	:password_confirmation => "Girardot8")

User.create(:email=>"jared.ocampo@unitec.edu", :first_name => "Jared",
	:last_name=>"Ocampo", :password => "jocampo", 
	:password_confirmation => "jocampo")


Permission.create(:name => "Crear Usuario", :description => "No description available")
Permission.create(:name => "Modificar Usuario", :description => "No description available")
Permission.create(:name => "Eliminar Usuario", :description => "No description available")
Permission.create(:name => "Ver Usuario", :description => "No description available")

Permission.create(:name => "Crear Evento", :description => "No description available")
Permission.create(:name => "Modificar Evento", :description => "No description available")
Permission.create(:name => "Eliminar Evento", :description => "No description available")
Permission.create(:name => "Ver Evento", :description => "No description available")

Permission.create(:name => "Crear Recurso", :description => "No description available")
Permission.create(:name => "Modificar Recurso", :description => "No description available")
Permission.create(:name => "Eliminar Recurso", :description => "No description available")
Permission.create(:name => "Ver Recurso", :description => "No description available")

Permission.create(:name => "Crear Tag", :description => "No description available")
Permission.create(:name => "Modificar Tag", :description => "No description available")
Permission.create(:name => "Eliminar Tag", :description => "No description available")
Permission.create(:name => "Ver Tag", :description => "No description available")

Permission.create(:name => "Crear Rol", :description => "No description available")
Permission.create(:name => "Modificar Rol", :description => "No description available")
Permission.create(:name => "Eliminar Rol", :description => "No description available")
Permission.create(:name => "Ver Rol", :description => "No description available")
Permission.create(:name => "Asignar Rol", :description => "No description available")