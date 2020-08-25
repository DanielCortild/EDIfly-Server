lock "~> 3.14.1"

require 'capistrano-db-tasks'

set :application, "edifly-server"
set :repo_url
set :deploy_to, "/var/www/edifly-server"

set :linked_files, %w{config/database.yml config/master.key}
set :linked_dirs, %w{log tmp/pids tmp/cache tmp/sockets vendor/bundle public/system}

set :keep_releases, 3
set :keep-assets, 3

set :db_local_clean, true
set :db_remote_clean, true

namespace :deploy do
	desc 'Restart application'
	task :restart do
		on roles(:app), in: :sequence, wait: 5 do
			execute :touch, realease_path.join('tmp/restart.txt')
		end
	end

	after :publishing, 'deploy:restart'
	after :finishing, 'deploy:cleanup'
end
