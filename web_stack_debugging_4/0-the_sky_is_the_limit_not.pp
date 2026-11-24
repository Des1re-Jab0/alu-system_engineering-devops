# Raises the open files limit of Nginx so it handles many concurrent requests
exec { 'fix--for-nginx':
  command => 'sed -i "s/-n 15/-n 4096/" /etc/default/nginx',
  path    => '/usr/local/bin/:/bin/',
} ->
exec { 'restart-nginx':
  command => 'nginx restart',
  path    => '/etc/init.d/',
}
