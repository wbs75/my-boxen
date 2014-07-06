class people::wbs75::config::desktop {

    file { 'Default Desktop':
        ensure  => file,
        path    =>"/System/Library/CoreServices/DefaultDesktop.jpg",
        mode    =>'0755',
    }

    exec { 'Set Desktop':
        user        => 'root',
        command     =>  '/Library/Ruby/Gems/2.0.0/gems/desktop-1.1.1/bin/desktop http://fc05.deviantart.net/fs71/f/2012/282/6/c/apple_dark_by_mikesgame-d5hb6i1.jpg',
        require     =>  Exec['Ruby Install Desktop']
    }
}