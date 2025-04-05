FROM php:8.2-apache

# Define o diretório de trabalho
WORKDIR /var/www/html

# Atualiza o sistema e instala dependências do sistema e PHP
RUN apt-get update && apt-get install -y \
    libpng-dev \
    libonig-dev \
    libxml2-dev \
    libzip-dev \
    libicu-dev \
    libmagickwand-dev \
    libexif-dev \
    libcurl4-openssl-dev \
    libevent-dev \
    libz-dev \
    libssl-dev \
    libidn2-0-dev \
    pkg-config \
    curl \
    wget \
    git \
    unzip \
    build-essential \
    openssl \
    lsb-release \
    gnupg \
    && docker-php-ext-install \
        bcmath \
        intl \
        mbstring \
        pdo_mysql \
        mysqli \
        opcache \
        xml \
        dom \
        exif \
    && docker-php-ext-configure zip \
    && docker-php-ext-configure gd --with-freetype --with-jpeg \
    && docker-php-ext-install zip gd

# Instalar extensões PECL em etapas separadas para evitar erro de dependência
RUN pecl install raphf \
    && docker-php-ext-enable raphf

RUN pecl install redis imagick pecl_http \
    && docker-php-ext-enable redis imagick http

# Instala o Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Instala o Node.js 20.x e npm
RUN curl -fsSL https://deb.nodesource.com/setup_20.x | bash - \
    && apt-get install -y nodejs \
    && npm install -g npm

# Copia script de entrypoint (certifique-se que o arquivo existe no mesmo nível do Dockerfile)
COPY entrypoint.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/entrypoint.sh

# Permissões para pastas do Laravel
RUN mkdir -p /var/www/html/storage /var/www/html/bootstrap/cache \
    && chmod -R 775 /var/www/html/storage /var/www/html/bootstrap/cache \
    && chown -R www-data:www-data /var/www/html/storage /var/www/html/bootstrap/cache \
    && chmod -R u+rwX,g+rwX,o+rwX /var/www/html

# Habilita mod_rewrite no Apache
RUN a2enmod rewrite

# Define entrypoint
ENTRYPOINT ["entrypoint.sh"]
