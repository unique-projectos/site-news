#!/bin/bash


cd /var/www/html || exit


if [ ! -f "package.json" ]; then
    echo "Copying package.json..."
    cp /path/to/your/package.json /var/www/html/package.json
fi

# if [ ! -f "package-lock.json" ]; then
#     echo "Copying package-lock.json..."
#     cp /path/to/your/package-lock.json /var/www/html/package-lock.json
# fi

echo "Installing NPM dependencies..."
npm install

echo "Building production assets with NPM..."
npm run prod

echo "Instalando dependências do Composer..."
composer install --optimize-autoloader --no-interaction

if [ -z "${APP_KEY}" ] || [ "${APP_KEY}" == "base64:" ]; then
    echo "Generating Laravel application key..."
    php artisan key:generate --force
fi


chown -R www-data:www-data /var/www/html/storage
chmod -R 775 /var/www/html/storage
chown -R www-data:www-data /var/www/html/bootstrap/cache
chmod -R 775 /var/www/html/bootstrap/cache
chmod -R u+rwX,g+rwX,o+rwX /var/www/html

echo "Starting Apache..."
exec apache2-foreground