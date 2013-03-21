test: server
	./node_modules/.bin/mocha
	killall node

server:
	./bin/server > /dev/null 2>&1 &