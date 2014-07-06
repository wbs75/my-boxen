class people::wbs75::scripts::init {

  file {"/opt/boxen/bin/boxen_auto-update":
    ensure  => link,
    target  => '/opt/boxen/repo/modules/people/manifests/wbs75/scripts/boxen_auto-update',
    mode    => '0755',
  }
}
