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

    require 'net/http'
    require 'open-uri'

    def host_m(url)
      begin
        open(url)
      rescue URI::InvalidURIError
        host = url.match(".+\:\/\/([^\/]+)")[1]
      end
    end

    def path_m(url)
      begin
        open(url)
      rescue URI::InvalidURIError
        url.partition(host)[2] || "/"
      end
    end
        
end
