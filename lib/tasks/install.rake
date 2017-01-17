# desc "Explaining what the task does"
namespace :swell_media do
	task :install do
		puts "installing"


		# migrations
		migrations = [
			'swell_fitness_migration.rb'
		]

		prefix = Time.now.utc.strftime("%Y%m%d%H%M%S").to_i

		migrations.each do |filename|
			source = File.join( Gem.loaded_specs["swell_fitness"].full_gem_path, "lib/tasks/install_files", filename )

    		target = File.join( Rails.root, 'db/migrate', "#{prefix}_#{filename}" )

    		FileUtils.cp_r source, target
    		prefix += 1
		end

	end

	task :import do

		# seed exercises

		# seed workouts

	end
end
