FROM effectiveworld/centos6-php7

RUN yum -y install yum-utils \
    && yum-config-manager --disable remi-php54 \
    && yum-config-manager --enable remi-php73

RUN yum -y remove phpMyAdmin

RUN yum -y install php-mcrypt php-cli php-gd php-curl php-mysql php-ldap php-zip php-fileinfo

RUN yum -y --enablerepo=remi install phpMyAdmin

RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"

RUN php composer-setup.php --install-dir=/usr/local/bin --filename=composer

RUN yum -y install git

