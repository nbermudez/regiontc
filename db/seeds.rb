# encoding: utf-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create!(:email=>"nestor.bermudez@unitec.edu", :first_name => "Nestor",
	:last_name=>"Bermudez", :password => "Girardot8", 
	:password_confirmation => "Girardot8", :phone => "Not available",
	:stake => "NONE")

User.create!(:email=>"jared.ocampo@unitec.edu", :first_name => "Jared",
	:last_name=>"Ocampo", :password => "jocampo", 
	:password_confirmation => "jocampo", :phone => "Not available",
	:stake => "San Pedro Sula")


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

Permission.create(:name => "Eliminar Grupo", :description => "No description available")
Permission.create(:name => "Crear Grupo", :description => "No description available")
Permission.create(:name => "Modificar Grupo", :description => "No description available")
Permission.create(:name => "Ver Grupo", :description => "No description available")
Permission.create(:name => "Asignar Grupo", :description => "No description available")
Permission.create(:name => "Ver Telefono", :description => "No description available")

Permission.create(:name => "Ver Historia", :description => "No description available")
Permission.create(:name => "Eliminar Historia", :description => "No description available")
Permission.create(:name => "Modificar Historia", :description => "No description available")
Permission.create(:name => "Crear Historia", :description => "No description available")

Role.create(:name => "Administrador")

Group.create(:name => "Líderes de Estaca")
Group.create(:name => "Secretarios")


Story.create(:stake => "Estaca Ejemplo", :year => 2012)

Event.create(:name => "Mi cumpleaños", :description => "Cumplo 22 años, por lo que hay que celebrar!",
	:place=>"Casa de Gerardo", :celebrated_at => Time.now)