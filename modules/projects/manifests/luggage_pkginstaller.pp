class projects::luggage_pkginstaller (
    $my_homedir   = $people::wbs75::params::my_homedir,
    $my_sourcedir = $people::wbs75::params::my_sourcedir,
    $my_username  = $people::wbs75::params::my_username
    ){

    repository { "${my_homedir}/src/luggage":
        ensure      => 'origin/HEAD',
        source      => 'unixorn/luggage',
    }

    file { "${my_homedir}/src/luggage":
        ensure      =>      link,
        source      =>      "${my_homedir}/src/luggage",
        require     =>      Repository["${my_homedir}/src/luggage"],
    }

    exec { 'mkdir -p /usr/local/share':
        user        => 'root',
        command     => '/usr/bin/sudo /bin/mkdir -p /usr/local/share',
        creates     => ["/usr/local/share"],
    }

    exec { 'mkdir -p /usr/local/bin':
        user        => 'root',
        command     => '/usr/bin/sudo /bin/mkdir -p /usr/local/bin',
        creates     => ["/usr/local/bin"],
    }

    file { '/usr/local/':
        owner       => $my_username,
        ensure      => directory,
        mode        => '0755',
    }

    exec { '.Force Ruby Install Trollop':
        user        => 'root',
        command     => '/usr/bin/sudo /usr/bin/gem install trollop',
        creates     => ["/Library/Ruby/Gems/2.0.0/gems/trollop-2.0"],
    }

    exec { '.Make Luggage Bootstrap':
        user        => 'root',
        command     => '/usr/bin/sudo /usr/bin/make bootstrap_files',
        cwd         => "${my_homedir}/src/luggage",
        creates     => ["/usr/local/share/luggage", "/usr/local/bin/app2luggage.rb"],
    }
}
