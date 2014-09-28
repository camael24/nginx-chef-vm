set :stage, :production
set :branch, "master"

role :app, %w{camael@ark.im}

server 'ark.im',
  user: 'camael',
  roles: %w{app},
  ssh_options: {
    keys: %w(/home/camael/.ssh/id_rsa),
    port: 9666,
    forward_agent: false,
    auth_methods: %w(publickey password)
  }

set :deploy_to, "/tmp/foo"
