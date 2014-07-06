class projects::cfpropertylist (
    $my_homedir   = $people::wbs75::params::my_homedir,
    $my_sourcedir = $people::wbs75::params::my_sourcedir,
    $my_username  = $people::wbs75::params::my_username
    ){

    repository { "${my_homedir}/src/cfpropertylist":
        ensure      => 'origin/HEAD',
        source      => 'glarizza/puppet-cfpropertylist',
    }

    file { "${my_homedir}/src/cfpropertylist":
        ensure      =>      link,
        source      =>      "${my_homedir}/src/cfpropertylist",
        require     =>      Repository["${my_homedir}/src/cfpropertylist"],
    }

    ruby::local { "${my_homedir}/src/cfpropertylist":
        version     => '2.0.0-p451'
    }

    $version = "2.0.0"
    ruby_gem { "bundler for ${version}":
        gem          => 'bundler',
        version      => '~> 1.5.3',
        ruby_version => $version,
    }

    exec { '.Bundle Install Puppet Cfpropertylist':
        user        =>      'root',
        command     =>      '/usr/bin/sudo /opt/rubies/2.0.0-p451/bin/bundle install',
        cwd         =>      "${my_homedir}/src/cfpropertylist",
        require     =>      Ruby_gem["bundler for ${version}"],
        creates     =>      ["/opt/rubies/2.0.0-p451/lib/ruby/gems/2.0.0/gems/CFPropertyList-2.2.5"],
    }
}
