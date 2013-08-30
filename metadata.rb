name             'LampStack'
maintainer       'Gary Smith'
maintainer_email 'bk@kc.gs'
license          'Apache 2.0'
description      'Installs/Configures LampStack on Precise32'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '1.0.0'

depends "apache2"
depends "mysql"
depends "database"
depends "php"
depends "chef-php-extra"
depends "git"
depends "vim"
depends "sendmail"
depends "imagemagick"
depends "sshfs-fuse"
depends "nodejs"
depends "npm"