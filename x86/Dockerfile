FROM debian:jessie

RUN DEBIAN_FRONTEND=noninteractive apt-get update -y \
	&& DEBIAN_FRONTEND=noninteractive apt-get -yy -q install --no-install-recommends \
	ca-certificates \
	mysql-client \
	python-serial \
	python-mysqldb \
	wget \
	unzip \
	&& DEBIAN_FRONTEND=noninteractive apt-get upgrade -y \
	&& DEBIAN_FRONTEND=noninteractive apt-get autoremove -y \
	&& DEBIAN_FRONTEND=noninteractive apt-get clean -y \
	&& rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Use Dockerize to wait for MySQL container https://github.com/docker/compose/issues/374#issuecomment-126312313
ENV DOCKERIZE_VERSION v0.2.0
RUN wget https://github.com/jwilder/dockerize/releases/download/$DOCKERIZE_VERSION/dockerize-linux-amd64-$DOCKERIZE_VERSION.tar.gz \
    && tar -C /usr/local/bin -xzvf dockerize-linux-amd64-$DOCKERIZE_VERSION.tar.gz

ENV TALOLOGGER_VERSION v17h
RUN wget http://olammi.iki.fi/sw/taloLogger/taloLogger_$TALOLOGGER_VERSION.zip && \
	unzip taloLogger_$TALOLOGGER_VERSION.zip -d /root && \
	rm -f taloLogger_$TALOLOGGER_VERSION.zip

COPY ../docker-entrypoint.sh /
ENTRYPOINT ["/docker-entrypoint.sh"]
