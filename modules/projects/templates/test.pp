  property_list_key { 'IconViewSettings_of_DesktopViewSettings':
    ensure     => present,
    path     => '/tmp/com.puppetlabs.puppet',
    key        => 'IconViewSettings_of_DesktopViewSettings',
    value      => [ {
                    'array'  => 'of',
                    'values' => 'dicts' }],
    value_type => 'array',
}
