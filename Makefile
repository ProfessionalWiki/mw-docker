build:
	docker build . --file Dockerfile-35-php74 --target mw -t prowiki/mediawiki:latest -t prowiki/mediawiki:35