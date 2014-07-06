# class projects::desktop {
#
#     file { 'Default Desktop':
#         ensure  => file,
#         path    =>"/System/Library/CoreServices/DefaultDesktop.jpg",
#         mode    =>'0755',
#     }
#
#     # class { 'ruby::global':
#     #     version => '1.9.3-p154'
#     # }
#
#     ruby_gem { "Desktop for System":
#         gem             => 'desktop',
#         version         => '1.1.1',
#         ruby_version    => 'system',
#         notify          => Exec['Set Desktop'],
#     }
#
#     exec { 'Set Desktop':
#         user        => 'root',
#         command     =>  '/Library/Ruby/Gems/2.0.0/gems/desktop http://fc05.deviantart.net/fs71/f/2012/282/6/c/apple_dark_by_mikesgame-d5hb6i1.jpg',
#         require     =>  Ruby_gem['Desktop for System']
#     }
# }
