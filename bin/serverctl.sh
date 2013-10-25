#!/bin/bash
NGINX=`brew --prefix nginx`'/bin/nginx'
PHPFPM=`brew --prefix php54`'/sbin/php-fpm'
PHPFPMCONFIG='/usr/local/etc/php/5.4/php-fpm.conf'
PIDPATH='/usr/local/var/run'
 
if [ $1 = "start" ]; then
    echo "Starting php-fpm ..."
    sudo $PHPFPM -y $PHPFPMCONFIG
    echo "Starting nginx ..."
    sudo $NGINX
    echo "Done!"
elif [ $1 = "stop" ]; then
    echo "Stopping nginx ..."
    sudo kill `cat $PIDPATH/nginx.pid`
    echo "Stopping php-fpm ..."
    sudo kill `cat $PIDPATH/php-fpm.pid`
    echo "Done!"
elif [ $1 = "restart" ]; then
    echo "Stopping nginx ..."
    sudo kill `cat $PIDPATH/nginx.pid`
    echo "Stopping php-fpm ..."
    sudo kill `cat $PIDPATH/php-fpm.pid`
    echo "Starting php-fpm ..."
    sudo $PHPFPM
    echo "Starting nginx ..."
    sudo $NGINX
    echo "Done!"
elif [ $1 = "nginx" ]; then
    if [ $2 = "start" ]; then
        echo "Starting nginx ..."
        sudo $NGINX
    elif [ $2 = "stop" ]; then
        echo "Stopping nginx ..."
        sudo kill `cat $PIDPATH/nginx.pid`
    elif [ $2 = "restart" ]; then
        echo "Stopping nginx ..."
        sudo kill `cat $PIDPATH/nginx.pid`
        echo "Starting nginx ..."
        sudo $NGINX
    else
        echo "Valid commands for nginx: start | stop | restart"
    fi
elif [ $1 = "php" ] || [ $1 = "php-fpm" ]; then
    if [ $2 = "start" ]; then
        echo "Starting php-fpm ..."
        sudo $PHPFPM
    elif [ $2 = "stop" ]; then
        echo "Stopping php-fpm ..."
        sudo kill `cat $PIDPATH/php-fpm.pid`
    elif [ $2 = "restart" ]; then
        echo "Stopping php-fpm ..."
        sudo kill `cat $PIDPATH/php-fpm.pid`
        echo "Starting php-fpm ..."
        sudo $PHPFPM
    else
        echo "Valid commands for php-fpm: start | stop | restart"
    fi
    echo "Valid commands: "
    echo "start | stop | restart"
    echo "----------------------------------------"
    echo "nginx (start | stop | restart)"
    echo "php | php-fpm (start | stop | restart)"
fi