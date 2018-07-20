.PHONY: build push
DOMAIN="jasonrichardsmith"
APP="glide_builder"

build: 
	@docker build -t ${APP} .

push: build
	@docker login -u="$(DOCKER_USERNAME)" -p="$(DOCKER_PASSWORD)"
	@docker tag ${APP} ${DOMAIN}/${APP}:${TRAVIS_BUILD_NUMBER}
	@docker push ${DOMAIN}/${APP}:${TRAVIS_BUILD_NUMBER}

