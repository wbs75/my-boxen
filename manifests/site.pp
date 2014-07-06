require boxen::environment

  package {'homebrew':
    install_options => ['--build-from-source'],
  }

  package {'git':
    install_options => ['--build-from-source'],
  }

require homebrew

Exec {
  group       => 'staff',
  logoutput   => on_failure,
  user        => $boxen_user,

  path => [
    "${boxen::config::home}/rbenv/shims",
    "${boxen::config::home}/rbenv/bin",
    "${boxen::config::home}/rbenv/plugins/ruby-build/bin",
    "${boxen::config::home}/homebrew/bin",
    '/usr/bin',
    '/bin',
    '/usr/sbin',
    '/sbin'
  ],

  environment => [
    "HOMEBREW_CACHE=${homebrew::config::cachedir}",
    "HOME=/Users/${::boxen_user}"
  ]
}

File {
  group => 'staff',
  owner => $boxen_user
}

Package {
  provider => homebrew,
  ensure  => latest,
  require  => Class['homebrew'],
}

Repository {
  provider => git,
  extra    => [
    '--recurse-submodules'
  ],
  require  => File["${boxen::config::bindir}/boxen-git-credential"],
  config   => {
    'credential.helper' => "${boxen::config::bindir}/boxen-git-credential"
  }

}

Service {
  provider => ghlaunchd
}

Homebrew::Formula <| |> -> Package <| |>

node default {
  # core modules, needed for most things
  # include dnsmasq

  include git
  include hub

  homebrew::tap {'homebrew/dupes':
    require  => Class['homebrew'],
  }

  package {'apple-gcc42':
    ensure  => latest,
    require => Homebrew['tap'],
  }

  exec { 'brew link --force apple-gcc42':
    user  => $boxen_user,
    command   => 'brew link --force apple-gcc42',
    require  => Class['homebrew'],
  }

  exec { 'ln -nsf $(which gcc-4.2) /opt/boxen/homebrew/bin/gcc42':
    user  => $boxen_user,
    command   => 'ln -nsf $(which gcc-4.2) /opt/boxen/homebrew/bin/gcc42',
    require   =>  Exec['brew link --force apple-gcc42'],
  }


  # include nginx

  # fail if FDE is not enabled
  # if $::root_encrypted == 'no' {
  #   fail('Please enable full disk encryption and try again')
  # }

  # node versions
  # include nodejs::v0_6
  # include nodejs::v0_8
  # include nodejs::v0_10

  # default ruby versions
  # ruby::version { '1.9.3': }
  # ruby::version { '2.0.0': }
  # ruby::version { '2.1.0': }
  # ruby::version { '2.1.1': }
  # ruby::version { '2.1.2': }

  # common, useful packages
  package {
    [
      'ack',
      'findutils',
      'gnu-tar'
    ]:
  }

  file { "${boxen::config::srcdir}/our-boxen":
    ensure => link,
    target => $boxen::config::repodir
  }
}
