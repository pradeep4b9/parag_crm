# config valid only for current version of Capistrano
set :application, 'parag_crm_new'
set :repo_url, 'https://pradeep4b9:comakeit@123456@github.com/pradeep4b9/parag_crm_new.git'


set :default_stage, "production" 

set :deploy_to, '/home/ubuntu/my_verified_store'
ask :branch, proc { `git rev-parse --abbrev-ref HEAD`.chomp }
set :scm, :git
set :user, "ubuntu"
set :domain, "52.66.11.223"

set :format, :pretty
set :log_level, :debug
set :pty,  false
set :assets_roles, [:web, :app]
set :rails_env, 'production'


set :ssh_options, {
#    keys: %w(/home/ec2/skill_test.pem),
    forward_agent: true,
    auth_methods: ["publickey"],
    keys: ["/home/pradeep/skill_test.pem"]
    #auth_methods: %w(password)
}
role :ubuntu, "ubuntu@52.66.11.223"

set :puma_rackup, -> { File.join(current_path, 'config.ru') }
set :puma_state, "#{shared_path}/tmp/pids/puma.state"
set :puma_pid, "#{shared_path}/tmp/pids/puma.pid"
set :puma_bind, "unix://#{shared_path}/tmp/sockets/puma.sock"
set :puma_conf, "#{shared_path}/puma.rb"
set :puma_access_log, "#{shared_path}/log/puma_error.log"
set :puma_error_log, "#{shared_path}/log/puma_access.log"
set :puma_role, :app
set :puma_env, fetch(:rack_env, fetch(:rails_env, 'production'))
set :puma_threads, [0, 16]
set :puma_workers, 0
set :puma_init_active_record, true
set :puma_preload_app, true
# Default value for :pty is false
set :pty, true


# Default value for keep_releases is 5
set :keep_releases, 5

