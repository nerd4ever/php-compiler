FROM debian:10
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install wget apt-transport-https lsb-release ca-certificates sudo -y
RUN wget -O /etc/apt/trusted.gpg.d/php.gpg https://packages.sury.org/php/apt.gpg \
    && echo "deb https://packages.sury.org/php/ $(lsb_release -sc) main" | tee /etc/apt/sources.list.d/php.list
RUN wget -O /etc/apt/trusted.gpg.d/php.gpg https://packages.sury.org/php/apt.gpg \
    && echo "deb https://packages.sury.org/php/ $(lsb_release -sc) main" | tee /etc/apt/sources.list.d/php.list
RUN apt update 

RUN wget http://phpdox.de/releases/phpdox.phar \
    && wget https://phar.phpunit.de/phpcpd.phar \
    && wget https://squizlabs.github.io/PHP_CodeSniffer/phpcs.phar \
    && wget https://squizlabs.github.io/PHP_CodeSniffer/phpcbf.phar \
    && wget https://github.com/pdepend/pdepend/releases/download/2.9.1/pdepend.phar \
    && wget https://phar.phpunit.de/phploc.phar \
    && wget https://phar.phpunit.de/phpunit.phar \
    && wget https://getcomposer.org/composer.phar \
    && wget -c https://github.com/phpmd/phpmd/releases/download/2.9.1/phpmd.phar

RUN chmod +x phpdox.phar phpcpd.phar phpcs.phar pdepend.phar phploc.phar phpunit.phar composer.phar phpmd.phar

RUN mv phpdox.phar /usr/local/bin/phpdox \
    && mv phpcpd.phar /usr/local/bin/phpcpd \
    && mv phpcs.phar /usr/local/bin/phpcs \
    && mv phpcbf.phar /usr/local/bin/phpcbf \
    && mv pdepend.phar /usr/local/bin/pdepend \
    && mv phploc.phar  /usr/local/bin/phploc \
    && mv phpunit.phar /usr/local/bin/phpunit \
    && mv composer.phar /usr/local/bin/composer \
    && mv phpmd.phar /usr/local/bin/phpmd

RUN apt-get install -y php-xdebug unzip build-essential libssl-dev git curl dos2unix build-essential cmake doxygen doxygen-doc doxygen-latex gdb valgrind libcurl4-openssl-dev libcurl4
RUN apt-get install -y php7.1 php7.1-bcmath php7.1-bz2 php7.1-cgi php7.1-cli php7.1-common  php7.1-curl  php7.1-dev  php7.1-enchant  php7.1-fpm  php7.1-gd  php7.1-gmp  php7.1-imap  php7.1-interbase  php7.1-intl  php7.1-json  php7.1-ldap  php7.1-mbstring  php7.1-mcrypt  php7.1-mysql  php7.1-odbc  php7.1-opcache  php7.1-pgsql  php7.1-phpdbg  php7.1-pspell  php7.1-readline  php7.1-recode  php7.1-snmp  php7.1-soap  php7.1-sqlite3  php7.1-sybase  php7.1-tidy  php7.1-xml  php7.1-xmlrpc  php7.1-xsl  php7.1-zip 
RUN apt-get install -y php7.2 php7.2-bcmath php7.2-bz2 php7.2-cgi php7.2-cli php7.2-common  php7.2-curl  php7.2-dev  php7.2-enchant  php7.2-fpm  php7.2-gd  php7.2-gmp  php7.2-imap  php7.2-interbase  php7.2-intl  php7.2-json  php7.2-ldap  php7.2-mbstring  php7.2-mcrypt  php7.2-mysql  php7.2-odbc  php7.2-opcache  php7.2-pgsql  php7.2-phpdbg  php7.2-pspell  php7.2-readline  php7.2-recode  php7.2-snmp  php7.2-soap  php7.2-sqlite3  php7.2-sybase  php7.2-tidy  php7.2-xml  php7.2-xmlrpc  php7.2-xsl  php7.2-zip
RUN apt-get install -y php7.3 php7.3-bcmath php7.3-bz2 php7.3-cgi php7.3-cli php7.3-common  php7.3-curl  php7.3-dev  php7.3-enchant  php7.3-fpm  php7.3-gd  php7.3-gmp  php7.3-imap  php7.3-interbase  php7.3-intl  php7.3-json  php7.3-ldap  php7.3-mbstring  php7.3-mcrypt  php7.3-mysql  php7.3-odbc  php7.3-opcache  php7.3-pgsql  php7.3-phpdbg  php7.3-pspell  php7.3-readline  php7.3-recode  php7.3-snmp  php7.3-soap  php7.3-sqlite3  php7.3-sybase  php7.3-tidy  php7.3-xml  php7.3-xmlrpc  php7.3-xsl  php7.3-zip
RUN apt-get install -y php7.4 php7.4-bcmath php7.4-bz2 php7.4-cgi php7.4-cli php7.4-common  php7.4-curl  php7.4-dev  php7.4-enchant  php7.4-fpm  php7.4-gd  php7.4-gmp  php7.4-imap  php7.4-interbase  php7.4-intl  php7.4-json  php7.4-ldap  php7.4-mbstring  php7.4-mcrypt  php7.4-mysql  php7.4-odbc  php7.4-opcache  php7.4-pgsql  php7.4-phpdbg  php7.4-pspell  php7.4-readline  php7.4-snmp  php7.4-soap  php7.4-sqlite3  php7.4-sybase  php7.4-tidy  php7.4-xml  php7.4-xmlrpc  php7.4-xsl  php7.4-zip
RUN apt-get install -y php8.0 php8.0-bcmath php8.0-bz2 php8.0-cgi php8.0-cli php8.0-common  php8.0-curl  php8.0-dev  php8.0-enchant  php8.0-fpm  php8.0-gd  php8.0-gmp  php8.0-imap  php8.0-interbase  php8.0-intl php8.0-ldap  php8.0-mbstring  php8.0-mcrypt  php8.0-mysql  php8.0-odbc  php8.0-opcache  php8.0-pgsql  php8.0-phpdbg  php8.0-pspell  php8.0-readline  php8.0-snmp  php8.0-soap  php8.0-sqlite3  php8.0-sybase  php8.0-tidy  php8.0-xml  php8.0-xmlrpc  php8.0-xsl  php8.0-zip
RUN apt-get install -y php8.1 php8.1-bcmath php8.1-bz2 php8.1-cgi php8.1-cli php8.1-common  php8.1-curl  php8.1-dev  php8.1-enchant  php8.1-fpm  php8.1-gd  php8.1-gmp  php8.1-imap  php8.1-interbase  php8.1-intl php8.1-ldap  php8.1-mbstring  php8.1-mcrypt  php8.1-mysql  php8.1-odbc  php8.1-opcache  php8.1-pgsql  php8.1-phpdbg  php8.1-pspell  php8.1-readline  php8.1-snmp  php8.1-soap  php8.1-sqlite3  php8.1-sybase  php8.1-tidy  php8.1-xml  php8.1-xmlrpc  php8.1-xsl  php8.1-zip

RUN apt-get clean

COPY entrypoint.sh /entrypoint
RUN dos2unix /entrypoint \
    && chmod +x /entrypoint

WORKDIR /workspace

CMD ["tail", "-f", "/var/log/lastlog"]