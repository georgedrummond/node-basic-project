APPNAME      = "gitly"
VERSION      = "0.0.1"
AUTHOR       = "George Drummond"
AUTHOR_EMAIL = "georgedrummond@gmail.com"
REVISION     = `git rev-parse --short HEAD`

# Run our test suite
test: server
	./node_modules/.bin/mocha
	killall node

# Start up server for testing
server:
	./bin/server > /dev/null 2>&1 &

# Build binary
build:
	tar -zcvf $(APPNAME)-$(VERSION)-$(REVISION).tar.gz ./app ./node_modules ./bin