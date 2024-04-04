install:
	npm install

lintfix:
	npm run lint:fix

clean:
	rm -rf node_modules

local-super-linter: 
	docker run \
		-e LOG_LEVEL=DEBUG \
		-e RUN_LOCAL=true \
		-v /Users/mick/Developer/Private/dr-articles:/tmp/lint \
		--rm \
		ghcr.io/super-linter/super-linter:v6.2.0
