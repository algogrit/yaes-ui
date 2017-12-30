build:
	mkdir -p build/
	elm make src/App.elm --output build/app.js

dev-run:
	elm reactor

.PHONY: build
