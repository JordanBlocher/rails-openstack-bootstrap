namespace :db do
  task :migrate_all do
    Rake::Task["db:migrate_cloud"].invoke
    Rake::Task["db:migrate_glance"].invoke
    Rake::Task["db:migrate_nova"].invoke
  end

  task :migrate_cloud do
    ActiveRecord::Base.establish_connection(
         :adapter  => "postgresql",
         :host     => "localhost",
         :username => "postgres",
         :password => "pg",
         :database => "cloud_development"
)
    ActiveRecord::Migrator.migrate("db/migrate/cloud/")
  end
 
  task :migrate_glance do
    ActiveRecord::Base.establish_connection(
         :adapter  => "mysql2",
         :host     => "localhost",
         :username => "root",
         :password => "kikrat",
         :database => "glance"
)
    ActiveRecord::Migrator.migrate("db/migrate/glance/")
  end

task :migrate_nova do
    ActiveRecord::Base.establish_connection(
         :adapter  => "mysql2",
         :host     => "localhost",
         :username => "root",
         :password => "kikrat",
         :database => "nova"
)
    ActiveRecord::Migrator.migrate("db/migrate/nova/")
  end


end
