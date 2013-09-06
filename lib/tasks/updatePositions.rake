namespace :resources do 
	task :fill_position_out => :environment do
		puts "Please be patient, this may take a while..."
		all = Resource.where(:position => nil)
		puts "Updating " + all.size.to_s + " resources"
		all.each do |resource|
			puts "."
			resource.position = resource.id
			resource.save
		end
		puts "Done!"
	end
end