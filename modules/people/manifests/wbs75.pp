class people::wbs75 {

    # Remove services we don't want

    service {"dev.nginx":
        ensure => "stopped",
    }

    service {"dev.dnsmasq":
        ensure => "stopped",
    }

    service {"dev.nodejs":
        ensure => "stopped",
    }

    service {"dev.phantomjs":
        ensure => "stopped",
    }

    service {"dev.ruby":
        ensure => "stopped",
    }

    include people::wbs75::params

    class {'people::wbs75::scripts::init': } ->
    class {'people::wbs75::homebrew': } ->
    class {'people::wbs75::applications': } ->
    class {'projects::all': } ->
    class {'people::wbs75::config::system_config': } ->
    class {'people::wbs75::config::global_config': } ->
    class {'people::wbs75::config::user_config': } ->
    class {'people::wbs75::config::dock_config': } ->
    class {'people::wbs75::config::diskutility_config': } ->
    class {'people::wbs75::config::finder_config': } ->
    class {'people::wbs75::config::itunes_config': } ->
    class {'people::wbs75::config::terminal_config': } ->
    class {'people::wbs75::config::remotedesktop_config': } ->
    class {'people::wbs75::config::safari_config': } ->
    class {'people::wbs75::config::desktop': } ->
    class {'people::wbs75::dock': }

}
