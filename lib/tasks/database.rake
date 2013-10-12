
namespace :db do
	desc "Drop and recreate the current database"
	task :rebuild => :environment do
		# Drop
		puts 'Dropping the database'
		Rake::Task["db:drop"].invoke
		# Create
    puts 'Creating the database'
    Rake::Task["db:create"].invoke
    # Migrate
    puts 'Migrating the database'
    Rake::Task["db:migrate"].invoke
    # Seed
    puts 'Seeding the database'
    Rake::Task["db:seed"].invoke
  end
end
