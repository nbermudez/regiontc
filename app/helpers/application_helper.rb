module ApplicationHelper
	def puede(permiso)
    	(current_user.permissions.where(:name => permiso).any?) || 
    	(current_user.email == "nestor.bermudez@unitec.edu")
    end

    def no_spaces(cadena)
    	cadena.split(" ").join("_")
    end
end
