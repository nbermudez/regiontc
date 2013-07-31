module ApplicationHelper
	def puede(permiso)
    	(current_user.permissions.where(:name => permiso).any?) || 
    	(current_user.email == "nestor.bermudez@unitec.edu")
    end

    def no_spaces(cadena)
    	cadena.split(" ").join("_")
    end

    def years_til_now
    	years = (2000..Time.now.year).to_a
    end
end
