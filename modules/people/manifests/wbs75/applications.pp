class people::wbs75::applications {

    include bash
    include bash::completion
    # include charles
    # include dash
    # include dropbox
    # include handbrake
    # include onyx
    # include osxfuse
    # include sublime_text
    # include TotalFinder
    # include transmit
    # include vmware_fusion
    include xquartz
    # include vlc

    # class { 'vagrant':
    #   version => '1.6.3'
    # }

    # vagrant::plugin { 'vagrant-vmware-fusion':
    #     license => "/Users/${::luser}/Dropbox/config/Vagrant/fusion-6-license.lic",
    # }

    git::config::global { 'user.name':
        value => 'wbs75',
    }

    git::config::global { 'user.email':
        value => 'wbs75@me.com',
    }

    ## For the latest build of v3
    # include sublime_text

    # sublime_text::package {'Emmet':
    #     source => 'sergeche/emmet-sublime'
    # }

    package {'packer':
        ensure  => latest,
        require => Class['people::wbs75::homebrew'],
    }

    package {'brew-pkg':
        ensure  => latest,
        require => Class['people::wbs75::homebrew'],
    }

    package {'openssh':
        ensure  => latest,
        require => Class['people::wbs75::homebrew'],
    }

    package {'make':
        ensure  => latest,
        require => Class['people::wbs75::homebrew'],
    }

    package { 'gptfdisk': }
    package { 'ssh-copy-id': }
    package { 'wget': }
    package { 'cmake': }

########################################################################################


        # package {'Application State Cleaner':
        #     source      => 'http://www.eosgarden.com/en/download/?download_file=software/mac/ApplicationStateCleaner-1.0.dmg',
        #     provider    => appdmg,
        # }

        # package {'Archiver':
        #     source      => 'http://commondatastorage.googleapis.com/incrediblebee/apps/Archiver/Archiver.zip',
        #     provider    => compressed_app,
        # }

        # package {'AutoDMG':
        #     source      => "https://github.com/MagerValp/AutoDMG/releases/download/v1.4.3/AutoDMG-1.4.3.dmg",
        #     provider    => appdmg,
        # }

        # package {'Batchmod':
        #     source      => 'http://www.lagentesoft.com/resources/batchmod_163.zip',
        #     provider    => compressed_app,
        # }

        # package {'Cakebrew':
        #     source      => 'https://www.cakebrew.com/files/cakebrew-1.0.7.dmg',
        #     provider    => appdmg,
        # }

        # package {'Carbon Copy Cloner':
        #     source      => 'http://www.bombich.com/software/files/ccc-3.5.5.zip',
        #     provider    => compressed_app,
        # }

        # package {'CheatSheet':
        #     source      => 'http://mediaatelier.com/CheatSheet/CheatSheet_1.2.2.zip',
        #     provider    => compressed_app,
        # }

        # package {'CleanMyMac 2':
        #     source      => 'http://dl.devmate.com/com.macpaw.CleanMyMac2/CleanMyMac2.dmg',
        #     provider    => appdmg,
        # }

        # package {'DiskWarrior':
        #     source      => 'https://www.dropbox.com/s/p0jbeo6wgo4aa58/DiskWarrior.zip',
        #     provider    => compressed_app,
        # }

        # package {'DivX':
        #     source      => 'http://download.divx.com/divx/mac/DivXInstaller.dmg',
        #     provider    =>  pkgdmg,
        # }

        # package {'DynUpdater':
        #     source      => 'http://cdn.dyn.com/dynupdater/DynUpdater.dmg',
        #     provider    => appdmg,
        # }

        # package {'Fluid':
        #     source      =>  'http://fluidapp.com/dist/Fluid_1.8.2.zip',
        #     provider    => compressed_app,
        # }

        # package {'GitHub':
        #     source      =>  'https://github-central.s3.amazonaws.com/mac/GitHub%20for%20Mac%20181.zip',
        #     provider    => compressed_app,
        # }

        # package {'iStat Menus':
        #     source      => 'http://s3.amazonaws.com/bjango/files/istatmenus4/istatmenus4.21.zip',
        #     provider    => compressed_app,
        # }

        # package {'LaunchControl':
        #     source      => 'http://www.soma-zone.com/download/files/LaunchControl_1.15.1.tar.bz2',
        #     provider    => compressed_app,
        # }

        # package {'Mac Pilot':
        #     source      => 'http://www.koingosoftware.com/downloads/macintosh/mac_pilot.dmg',
        #     provider    => appdmg,
        # }

        # package {'MainMenu Pro':
        #     source      => 'http://storage.googleapis.com/incrediblebee/apps/MainMenu-Pro/MainMenu-Pro.zip',
        #     provider    => compressed_app,
        # }

        # package {'Meteorologist':
        #    source      => "http://softlayer-dal.dl.sourceforge.net/project/heat-meteo/Meteo/Meteo%201.6.1/Meteorologist-1.6.1.dmg",
        #    provider    => appdmg,
        # }

        # package {'MunkiAdmin':
        #    source      => "https://github.com/hjuutilainen/munkiadmin/releases/download/v0.4.0-preview.2/MunkiAdmin-0.4.0-preview.2.dmg",
        #    provider    => appdmg,
        # }

        # package {'Pacifist':
        #     source   => 'http://www.charlessoft.com/pacifist_download/Pacifist_3.0.10.dmg',
        #     provider => appdmg,
        # }

        # package {'PlistEdit Pro':
        #     source      => 'https://s3.amazonaws.com/fatcatsoftware/plisteditpro/PlistEditPro_174.zip',
        #     provider    => compressed_app,
        # }

        # package {'PropEdit':
        #    source      => "http://www.eosgarden.com/en/download/?download_file=software/mac/PropEdit-2.1.0.dmg",
        #    provider    => appdmg,
        # }

        # package {'Progressive Downloader':
        #     source      =>  'http://www.macpsd.net/update/1.7/PSD.dmg',
        #     provider    => appdmg,
        # }

        # package {'ProToGO':
        #     ensure      => installed,
        #     source      => "http://sales.micromat.s3.amazonaws.com/disc_images/ptg_401.dmg",
        #     provider    => pkgdmg,
        # }

        # package {'Snippets':
        #     source      =>  'http://snippets.me/download/mac/Snippets-468.zip',
        #     provider    => compressed_app,
        # }

        # package {'Trim Enabler':
        #    source      => 'https://s3.amazonaws.com/cindori/TrimEnabler.dmg',
        #    provider    => appdmg,
        # }

    ###############################
    ### Install Custom Packages ###
    ###############################

# Sublime Text 3 (packages)

    # package { 'Sublime_Text_3-packages':
    #     source      => 'https://www.dropbox.com/s/4xyj8eq0yrz0rhq/Sublime_Text_3-packages.dmg',
    #     provider    =>  pkgdmg,
    # }
}
