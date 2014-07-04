FROM etna/drone-debian

RUN deb http://packages.dotdeb.org wheezy all
RUN deb-src http://packages.dotdeb.org wheezy all
RUN deb http://packages.dotdeb.org wheezy-php55 all
RUN deb-src http://packages.dotdeb.org wheezy-php55 all
RUN wget http://www.dotdeb.org/dotdeb.gpg
RUN apt-key add dotdeb.gpg
RUN apt-get update
RUN apt-get install -y php5 php5-cli php5-suhosin php5-mysql
