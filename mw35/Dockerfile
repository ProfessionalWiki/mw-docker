

# Professional Wiki version of base MediaWiki
FROM mediawiki:1.35 as pro-mw

RUN set -eux; \
	\
	apt-get update; \
	apt-get install -y --no-install-recommends \
		cron \
		vim \
		libbz2-dev=1.* gettext-base \
		zip unzip libzip-dev \
		# Required for PDFHandler
		ghostscript \
		xpdf-utils \
		# Required for Scribunto
		liblua5.1-0-dev \
	; \
	docker-php-ext-install -j "$(nproc)" calendar bz2 \
	; \
	rm -rf /var/lib/apt/lists/*

# Install the PHP luasendbox extension we need for Scribunto
RUN docker-php-source extract && \
        \
	git clone https://gerrit.wikimedia.org/r/mediawiki/php/luasandbox.git /usr/local/src/luasandbox && \
	docker-php-ext-configure /usr/local/src/luasandbox && \
	docker-php-ext-install /usr/local/src/luasandbox && \
	rm -rf /usr/local/src/luasandbox

COPY htaccess /var/www/html/.htaccess
RUN ln -s /var/www/html/ /var/www/html/w

CMD ["apache2-foreground"]
