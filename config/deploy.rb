# config valid only for current version of Capistrano
set :application, 'parag_crm_new'
set :repo_url, 'git@github.com:pradeep4b9/parag_crm_new.git'
set :stage, :production
# set :default_stage, "production" 

set :deploy_to, '/home/ubuntu/my_verified_store'
ask :branch, proc { `git rev-parse --abbrev-ref HEAD`.chomp }
set :scm, :git
set :user, "ubuntu"
set :domain, "52.66.11.223"
set :linked_dirs, %w{bin log tmp/pids tmp/cache tmp/sockets vendor/bundle public/system }

set :format, :pretty
set :log_level, :debug
set :pty,  false
set :assets_roles, [:web, :app]


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


namespace :deploy do

  # before :starting, :copy_puma

  desc 'Restart application'
  task :restart do
    on roles(:app), in: :sequence, wait: 5 do
      # Your restart mechanism here, for example:
      # execute :touch, release_path.join('tmp/restart.txt')
    end
  end

  after :restart, :clear_cache do
    on roles(:web), in: :groups, limit: 3, wait: 10 do
      # Here we can do anything such as:
      # within release_path do
      #   execute :rake, 'cache:clear'
      # end
    end
  end


  after :finishing, 'deploy:cleanup'

end


