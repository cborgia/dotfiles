# install php via homebrew
brew install php

# Install Composer (installed via brew now)
# curl -sS https://getcomposer.org/installer | php
# mv composer.phar /usr/local/bin/composer

# Install global Composer packages
/usr/local/bin/composer global require laravel/valet laravel/installer laravel/lumen-installer tightenco/jigsaw spatie/http-status-check bramus/mixed-content-scan

composer global update
