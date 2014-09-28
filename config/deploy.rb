# config valid only for Capistrano 3.1
lock '3.2.1'

set :application, 'foo'
set :scm, :git
set :server_name, "localhost"
set :keep_releases, 5
set :repo_url, 'git@bitbucket.org:arkvenger/nox-admin.git'
