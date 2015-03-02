server 'localhost', user: 'vagrant', roles: %w{web app}, my_property: :my_value

set :ssh_options, {
  port: 12222,
  keys: %w(~/.vagrant.d/insecure_private_key),
  forward_agent: true,
  auth_methods: %w(publickey)
}
