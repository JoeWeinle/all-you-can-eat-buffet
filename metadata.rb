name             'all-you-can-eat-buffet'
maintainer       'The Authors'
maintainer_email 'you@example.com'
license          'all_rights'
description      'Installs/Configures all-you-can-eat-buffet'
long_description 'Installs/Configures all-you-can-eat-buffet'
version          '0.1.0'

%w{ gitlab pipeline chef-server-cluster }.each do |cb|
  depends cb
end