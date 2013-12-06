#Basic packages needed for system
package { ['git', 'vim']: }

#Install goenv
vcsrepo { '/root/.goenv':
  ensure   => present,
  provider => git,
  source   => 'https://github.com/wfarr/goenv.git',
  require  => Package['git'],
}
vcsrepo { '/home/vagrant/.goenv':
  ensure   => present,
  provider => git,
  source   => 'https://github.com/wfarr/goenv.git',
  require  => Package['git'],
  user     => 'vagrant',
}

#Goproj for aliasing go command
vcsrepo { '/opt/goproj':
  ensure   => present,
  provider => git,
  source   => 'https://github.com/divoxx/goproj.git',
  require  => Package['git'],
}

#Set rake/rails to development
file { '/etc/profile.d/goenv.sh':
  ensure  => present,
  content => template('golocal/goenv.sh.erb'),
  owner   => 'root',
  group   => 'root',
  mode    => 0644,
}
