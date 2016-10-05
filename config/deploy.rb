# config valid only for current version of Capistrano
set :application, 'web_portal'
set :repo_url, 'git@github.com:pradeep4b9/parag_crm.git'

set :branch, "production"
# Default branch is :master
# ask :branch, `git rev-parse --abbrev-ref HEAD`.chomp

# Default deploy_to directory is /var/www/my_app_name
set :deploy_to, '/home/ubuntu/new_project'

# Default value for :scm is :git
set :scm, :git
set :user, "ubuntu"
set :domain, "52.32.8.127"
# set :scm_passphrase, "password"
# set :use_sudo, false
set :rails_env, "production"
# set :deploy_via, :copy
set :ssh_options, {
#    keys: %w(/home/rlisowski/.ssh/id_rsa),
    forward_agent: true,
    auth_methods: ["publickey"],
    keys: ["/home/pradeep/ec2/carmatec.pem"]
    #auth_methods: %w(password)
}
role :ubuntu, "ubuntu@52.32.8.127"

# Default value for :format is :airbrussh.
# set :format, :airbrussh

# You can configure the Airbrussh format using :format_options.
# These are the defaults.
# set :format_options, command_output: true, log_file: 'log/capistrano.log', color: :auto, truncate: :auto

# Default value for :pty is false
set :pty, true

# Default value for :linked_files is []
# append :linked_files, 'config/database.yml', 'config/secrets.yml'

# Default value for linked_dirs is []
# append :linked_dirs, 'log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'public/system'

# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }

# Default value for keep_releases is 5
set :keep_releases, 5
