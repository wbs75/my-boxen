class people::wbs75::homebrew (
  $my_homedir   = $people::wbs75::params::my_homedir,
  $my_sourcedir = $people::wbs75::params::my_sourcedir,
  $my_username  = $people::wbs75::params::my_username
  ) {

  homebrew::tap { 'homebrew/binary': } ->
  homebrew::tap { 'timsutton/formulae': } ->
  homebrew::tap { 'homebrew/dupes': }

}
