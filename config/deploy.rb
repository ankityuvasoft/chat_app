# config valid only for current version of Capistrano
lock '3.6.1'

set :application, 'Demochat'
set :repo_url, 'git@github.com:ankityuvasoft/chat_app.git'
set :branch, "master"
set :user, "ubuntu"

set :deploy_to, "/home/ubuntu/Demochat"
# set :deploy_via, :remote_cache
set :use_sudo, true
set :ssh_options, {
	keys: %w(/home/yuva/Desktop/Ankit/Demochat/ankit-chat-pem.pem),
	forward_agent: true,
<<<<<<< HEAD
	user: 'ubuntu'
  }
=======
	user: 'ubuntu',
 	:verbose => :debug }
>>>>>>> 1bf814f6fd3f09e84ea99893fb547635fd86901b

# Default branch is :master
# ask :branch, `git rev-parse --abbrev-ref HEAD`.chomp

# Default deploy_to directory is /var/www/my_app_name
# set :deploy_to, '/var/www/my_app_name'

# Default value for :scm is :git
 set :scm, :git

# Default value for :format is :airbrussh.
# set :format, :airbrussh

# You can configure the Airbrussh format using :format_options.
# These are the defaults.
# set :format_options, command_output: true, log_file: 'log/capistrano.log', color: :auto, truncate: :auto

# Default value for :pty is false
# set :pty, true

# Default value for :linked_files is []
# append :linked_files, 'config/database.yml', 'config/secrets.yml'

# Default value for linked_dirs is []
# append :linked_dirs, 'log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'public/system'

# Default value for default_env is {}
set :default_env, { path: "/opt/ruby/bin:$PATH" }

# Default value for keep_releases is 5
# set :keep_releases, 5
