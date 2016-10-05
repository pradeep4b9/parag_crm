# config valid only for current version of Capistrano
lock '3.6.1'

set :application, 'parag_crm_new'
set :repo_url, 'https://pradeep4b9:comakeit@123456@github.com/pradeep4b9/parag_crm_new.git'


set :branch, "master"

set :deploy_to, '/home/ubuntu/my_verified_store'

set :scm, :git
set :user, "ubuntu"
set :domain, "52.66.11.223"

set :deploy_via, :copy
set :ssh_options, {
#    keys: %w(/home/rlisowski/.ssh/id_rsa),
    forward_agent: true,
    auth_methods: ["publickey"],
    keys: ["/home/ec2/pradeep/skill_test.pem"]
    #auth_methods: %w(password)
}
role :ubuntu, "ubuntu@52.66.11.223"


# Default value for :pty is false
set :pty, true


# Default value for keep_releases is 5
set :keep_releases, 5

