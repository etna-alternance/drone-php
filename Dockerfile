FROM etna/drone-debian

RUN echo 'deb http://packages.dotdeb.org wheezy all'           >> /etc/apt/sources.list
RUN echo 'deb-src http://packages.dotdeb.org wheezy all'       >> /etc/apt/sources.list
RUN echo 'deb http://packages.dotdeb.org wheezy-php55 all'     >> /etc/apt/sources.list
RUN echo 'deb-src http://packages.dotdeb.org wheezy-php55 all' >> /etc/apt/sources.list
RUN wget http://www.dotdeb.org/dotdeb.gpg
RUN apt-key add dotdeb.gpg
RUN apt-get update
RUN apt-get install -y php5-cli php5-mysql
