.PHONY: build bash test container test-script uninstall logs

build:
	docker build mw$(version) --target pro-mw -t prowiki/mediawiki:$(version) -t local-mw$(version)

bash:
	docker exec -it temp-mw bash

test:
	$(MAKE) uninstall || true
	$(MAKE) container
	$(MAKE) test-script || true
	$(MAKE) uninstall

container:
	docker run --name temp-mw -p 127.0.0.1:80:80 -d local-mw$(version)
	docker cp setup.sh temp-mw:/var/www/html/setup.sh
	docker exec temp-mw bash /var/www/html/setup.sh

test-script:
	bash test.sh

uninstall:
	docker rm temp-mw -f

logs:
	docker logs temp-mwo