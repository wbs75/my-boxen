class projects::sublime_text_packages (
    $my_homedir   = $people::wbs75::params::my_homedir,
    $my_sourcedir = $people::wbs75::params::my_sourcedir,
    $my_username  = $people::wbs75::params::my_username
    ){

    repository { "${my_sourcedir}/sublime_text_pkg":
        ensure  => 'origin/HEAD',
        source  => 'wbs75/puppet-sublime_text_pkg',
    }

    file {"${my_homedir}/Library/Application Support/Sublime Text 3/Installed Packages":
        ensure    =>    link,
        recurse   =>    true,
        source    =>    "${my_homedir}/src/sublime_text_pkg/Sublime Text 3/Installed Packages",
        require => Repository["${my_homedir}/src/sublime_text_pkg/Sublime Text 3/Installed Packages"],
        mode  => '0755',
    }

    file {"${my_homedir}/Library/Application Support/Sublime Text 3/Packages":
        ensure    =>    link,
        recurse   =>    true,
        source    =>    "${my_homedir}/src/sublime_text_pkg/Sublime Text 3/Packages",
        require => Repository["${my_homedir}/src/sublime_text_pkg/Sublime Text 3/Packages"],
        mode  => '0755',
    }

}
