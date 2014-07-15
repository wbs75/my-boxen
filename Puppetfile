# This file manages Puppet module dependencies.
#
# It works a lot like Bundler. We provide some core modules by
# default. This ensures at least the ability to construct a basic
# environment.

# Shortcut for a module from GitHub's boxen organization
def github(name, *args)
  options ||= if args.last.is_a? Hash
    args.last
  else
    {}
  end

  if path = options.delete(:path)
    mod name, :path => path
  else
    version = args.first
    options[:repo] ||= "boxen/puppet-#{name}"
    mod name, version, :github_tarball => options[:repo]
  end
end

# Shortcut for a module under development
def dev(name, *args)
  mod name, :path => "#{ENV['HOME']}/src/boxen/puppet-#{name}"
end

# Includes many of our custom types and providers, as well as global
# config. Required.

github "boxen", "3.6.2"

# Support for default hiera data in modules

github "module-data", "0.0.3", :repo => "ripienaar/puppet-module-data"

# Core modules for a basic development environment. You can replace
# some/most of these if you want, but it's not recommended.

# github "dnsmasq",     "1.0.1"
# github "foreman",     "1.2.0"
# github "gcc",         "2.1.0"
github "git",         "2.5.0"
github "go",          "1.1.0"
github "homebrew",    "1.9.4"
github "hub",         "1.3.0"
github "inifile",     "1.0.3", :repo => "puppetlabs/puppetlabs-inifile"
# github "nginx",       "1.4.3"
# github "nodejs",      "3.7.0"
github "openssl",     "1.0.0"
# github "phantomjs",   "2.3.0"
github "pkgconfig",   "1.0.0"
github "repository",  "2.3.0"
# github "ruby",        "8.1.2"
github "stdlib",      "4.2.1", :repo => "puppetlabs/puppetlabs-stdlib"
github "sudo",        "1.0.0"
github "xquartz",     "1.2.1", :repo => "wbs75/puppet-xquartz"

# Optional/custom modules. There are tons available at
# https://github.com/boxen.

github "osx",               "2.7.0"
github "dockutil",          "0.2.1"
github "bash",              "1.1.0"
github "dash",              "1.0.0"
# github "dropbox",           "2.8.3",    :repo => "wbs75/puppet-dropbox"
# github "charles",           "3.9.2",    :repo => "wbs75/puppet-charles"
# # github "handbrake",         "1.0.1"
# github "onyx",              "1.2.0"
github "sublime_text",      "1.0.1"
# github "osxfuse",           "1.3.0",    :repo => "wbs75/puppet-osxfuse"
github "transmit",          "4.4.6",    :repo => "wbs75/puppet-transmit"
# github "totalfinder",       "1.0.5",    :repo => "wbs75/puppet-totalfinder"
# github "vmware_fusion",     "1.1.0",    :repo => "wbs75/puppet-vmware_fusion"
# github "vagrant",           "3.1.1"
# github "vlc",               "1.1.0"

mod "property_list_key",    "0.2.1",    :github_tarball => "glarizza/puppet-property_list_key"
