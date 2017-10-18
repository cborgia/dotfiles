# install php via homebrew
brew tap homebrew/homebrew-php
brew install php71


# Install Composer
curl -sS https://getcomposer.org/installer | php
mv composer.phar /usr/local/bin/composer

# Install global Composer packages
/usr/local/bin/composer global require laravel/installer laravel/lumen-installer tightenco/jigsaw spatie/http-status-check bramus/mixed-content-scan laravel/spark-installer

composer global update
