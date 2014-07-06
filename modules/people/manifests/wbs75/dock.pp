class people::wbs75::dock {

    include dockutil

    dockutil::item { 'System Preferences':
        item        =>  '/Applications/System Preferences.app',
        label       =>  'System Preferences',
        action      =>  'add',
        position    =>  1,
    }

    dockutil::item { 'iNet':
        item        =>  '/Applications/iNet.app',
        label       =>  'iNet',
        action      =>  'add',
        position    =>  2,
    }

    dockutil::item { 'VMWare':
        item        =>  '/Applications/VMware Fusion.app',
        label       =>  'VMware Fusion',
        action      =>  'add',
        position    =>  3,
    }

    dockutil::item { 'Server':
        item        =>  '/Applications/Server.app',
        label       =>  'Server',
        action      =>  'add',
        position    =>  4,
    }

    dockutil::item { 'Terminal':
        item        =>  '/Applications/Utilities/Terminal.app',
        label       =>  'Terminal',
        action      =>  'add',
        position    =>  5,
    }

    dockutil::item { 'CodeRunner':
        item        =>  '/Applications/CodeRunner.app',
        label       =>  'CodeRunner',
        action      =>  'add',
        position    =>  6,
    }

    dockutil::item { 'Sublime Text':
        item        => '/Applications/Sublime Text.app',
        label       => 'Sublime Text',
        action      => 'add',
        position    =>  7,
    }

    dockutil::item { 'Github':
        item        => '/Applications/Github.app',
        label       => 'Github',
        action      => 'add',
        position    =>  8,
    }

    dockutil::item { 'Transmit':
        item        => '/Applications/Transmit.app',
        label       => 'Transmit',
        action      => 'add',
        position    => 9,
    }

    dockutil::item { 'Safari':
        item        => '/Applications/Safari.app',
        label       => 'Safari',
        action      => 'add',
        position    =>  10,
    }

    dockutil::item { 'Mail':
        item        =>  '/Applications/Mail.app',
        label       =>  'Mail',
        action      =>  'add',
        position    =>  11,
    }

    dockutil::item { 'Messages':
        item        =>  '/Applications/Messages.app',
        label       =>  'Messages',
        action      =>  'add',
        position    =>  12,
    }

    dockutil::item { 'iTunes':
        item        =>  '/Applications/iTunes.app',
        label       =>  'iTunes',
        action      =>  'add',
        position    =>  13,
    }

    ## Remove the default crap
    dockutil::item { 'Remove Launchpad':
        item   => '/Applications/Launchpad.app',
        label  => 'Launchpad',
        action => 'remove',
    }

    dockutil::item { 'Remove Mission Control':
        item   => '/Applications/Mission Control.app',
        label  => 'Mission Control',
        action => 'remove',

    }

    dockutil::item { 'Remove Contacts':
        item   => '/Applications/Contacts.app',
        label  => 'Contacts',
        action => 'remove',

    }

    dockutil::item { 'Remove Calendar':
        item   => '/Applications/Calendar.app',
        label  => 'Calendar',
        action => 'remove',

    }

    dockutil::item { 'Remove Reminders':
        item   => '/Applications/Reminders.app',
        label  => 'Reminders',
        action => 'remove',

    }

    dockutil::item { 'Remove Notes':
        item   => '/Applications/Notes.app',
        label  => 'Notes',
        action => 'remove',

    }

    dockutil::item { 'Remove FaceTime':
        item   => '/Applications/FaceTime.app',
        label  => 'FaceTime',
        action => 'remove',

    }

    dockutil::item { 'Remove Photo Booth':
        item   => '/Applications/Photo Booth.app',
        label  => 'Photo Booth',
        action => 'remove',

    }

    dockutil::item { 'Remove App Store':
        item   => '/Applications/App Store.app',
        label  => 'App Store',
        action => 'remove',

    }

    dockutil::item { 'Remove iPhoto':
        item   => '/Applications/iPhoto.app',
        label  => 'iPhoto',
        action => 'remove',

    }

    dockutil::item { 'Remove Maps':
        item   => '/Applications/Maps.app',
        label  => 'Maps',
        action => 'remove',

    }

    dockutil::item { 'Remove iBooks':
        item   => '/Applications/iBooks.app',
        label  => 'iBooks',
        action => 'remove',
    }

    dockutil::item { 'Remove Pages':
        item   => '/Applications/Pages.app',
        label  => 'Pages',
        action => 'remove',
    }

    dockutil::item { 'Remove Numbers':
        item   => '/Applications/Numbers.app',
        label  => 'Numbers',
        action => 'remove',
    }

    dockutil::item { 'Remove Keynote':
        item   => '/Applications/Keynote.app',
        label  => 'Keynote',
        action => 'remove',
    }
}


