set :application, "kathrynradcliffe"
set :repository,  "ssh://hg@stf.repositoryhosting.com/stf/kathrynradcliffe"
set :deploy_to, "/var/www/#{application}"
set :scm, :mercurial
set :user, 'root'
set :domain, 'kathrynradcliffe.com'
role :app, "w4.etchdev.com"
role :web, "w4.etchdev.com"


require 'cap_gun'

set :cap_gun_action_mailer_config, {
  :address => "smtp.gmail.com",
  :port => 587,
  :user_name => "",
  :password => "",
  :authentication => :plain
}

set :cap_gun_email_envelope, { 
  :from => "servers@etchdev.com",
  :recipients => %w[david@etchdev.com] 
}

after "deploy:restart", "cap_gun:email"


namespace :deploy do
  task :start do
  end
  task :stop do
  end
  task :restart do
  end
end
