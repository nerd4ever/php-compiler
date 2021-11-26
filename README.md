# php-compiler
Versão voltada para compilar extensões de php, não é aconselhável usar esta imagem em produção devido a ter diversos pacotes desnecessários, ou seja, o ideal é usar uma nova imagem mais enxuta para esse propósito.


Exemplo de docker-compose.yaml
````
version: "2"
services:
 c-compiler: 
  image: nerd4ever/php-compiler:latest
  volumes:
    - "vol:/workspace"
volumes:
  vol:
````

Diretórios do PHP
````
/usr/bin/php8.1
/usr/bin/php8.0
/usr/bin/php7.4
/usr/bin/php7.3
/usr/bin/php7.2
/usr/bin/php7.1
/usr/bin/php
````
> O /usr/bin/php usa a versão 8.1 nessa compilação

phpize

````
/usr/bin/phpize8.1 
/usr/bin/phpize8.0 
/usr/bin/phpize7.4 
/usr/bin/phpize7.3 
/usr/bin/phpize7.2 
/usr/bin/phpize7.1
````