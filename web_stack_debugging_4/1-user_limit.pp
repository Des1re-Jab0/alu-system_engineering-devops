# Raises the open files limit of the holberton user
exec { 'change-os-configuration-for-holberton-user':
  command => 'sed -i "/^holberton/s/nofile [0-9]*/nofile 50000/" /etc/security/limits.conf',
  path    => '/usr/local/bin/:/bin/',
}
