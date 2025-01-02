#!/bin/bash
set -eu

if [ ! -e '/var/www/html/public/index.php' ]; then
    cp -a /var/www/lsky/* /var/www/html/
    
fi
    chown -R www-data /var/www/html
    chgrp -R www-data /var/www/html
    chmod -R 755 /var/www/html/

exec "$@"
