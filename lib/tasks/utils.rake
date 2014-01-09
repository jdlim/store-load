# Rake task to backup and restore my database as I develop
# Found from http://stackoverflow.com/questions/11656080/rake-task-to-backup-and-restore-database 
# 1/9/2014 - John Lim

namespace :db do
    task :backup do
		system "mysqldump --opt --user=ocadmin --password=opencart testing > xyz.sql"
	end


	task :restore do
		system "mysqldump --user=ocadmin --password  < xyz.sql"
	end

  end