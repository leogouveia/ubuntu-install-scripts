#!/bin/bash

#     My Ubuntu Personal Package Collection Curation.
#     It's a collection of scripts to install my favorite apps on Ubuntu enviroment.
#     It's made expecifically to Ubuntu 17.10 (Artful Aardvark)

#     Copyright (C) 2018 Leonardo de Albuquerque Gouveia

#     This program is free software; you can redistribute it and/or modify
#     it under the terms of the GNU General Public License as published by
#     the Free Software Foundation; either version 2 of the License, or
#     (at your option) any later version.

#     This program is distributed in the hope that it will be useful,
#     but WITHOUT ANY WARRANTY; without even the implied warranty of
#     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#     GNU General Public License for more details.

#     You should have received a copy of the GNU General Public License along
#     with this program; if not, write to the Free Software Foundation, Inc.,
#     51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.

echo "APPS INSTALLATION AUTOMATION SCRIPTS"
echo "------------------------------------"
echo ""
echo ""
echo "******* INSTALL PHP 7.1 *******"

sudo apt update

sudo apt install \
            php7.1 \
            php7.1-fpm \
            php7.1-mcrypt \
            php7.1-soap \
            php7.1-bcmath \
            php7.1-gd \
            php7.1-mysql \
            php7.1-sqlite3 \
            php7.1-bz2 \
            php7.1-gmp \
            php7.1-odbc \
            php7.1-cgi \
            php7.1-imap \
            php7.1-opcache \
            php7.1-tidy \
            php7.1-cli \
            php7.1-pgsql \
            php7.1-xml \
            php7.1-common \
            php7.1-intl \
            php7.1-phpdbg \
            php7.1-xmlrpc \
            php7.1-curl \
            php7.1-json \
            php7.1-pspell \
            php7.1-xsl \
            php7.1-ldap \
            php7.1-readline \
            php7.1-zip \
            php7.1-mapi \
            php7.1-mbstring \
            -y

# Install PHP Composer
sudo apt install composer -y
