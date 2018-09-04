# install php via homebrew
brew install php@7.2

# Install Composer
curl -sS https://getcomposer.org/installer | php
mv composer.phar /usr/local/bin/composer

# Install global Composer packages
/usr/local/bin/composer global require laravel/valet laravel/installer laravel/lumen-installer tightenco/jigsaw spatie/http-status-check bramus/mixed-content-scan laravel/spark-installer

composer global update
