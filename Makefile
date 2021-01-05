.PHONY: build bash test container test-script uninstall logs

build:
	docker build mw35 --target pro-mw -t prowiki/mediawiki:latest -t prowiki/mediawiki:35 -t local-mw35

bash:
	docker exec -it temp-mw bash

test: container test-script uninstall

container:
	docker run --name temp-mw -d local-mw35
	docker cp setup.sh temp-mw:/var/www/html/setup.sh
	docker exec temp-mw bash /var/www/html/setup.sh

test-script:
	bash test.sh || true

uninstall:
	docker rm temp-mw -f

logs:
	docker logs temp-mwo