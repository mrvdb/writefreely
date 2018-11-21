GITREV=`git describe --tags | cut -c 2-`
LDFLAGS=-ldflags="-X 'github.com/writeas/writefreely.softwareVer=$(GITREV)'"

GOCMD=go
GOINSTALL=$(GOCMD) install $(LDFLAGS)
GOBUILD=$(GOCMD) build $(LDFLAGS)
GOTEST=$(GOCMD) test $(LDFLAGS)
GOGET=$(GOCMD) get
BINARY_NAME=writefreely

all : build

build: deps
	cd cmd/writefreely; $(GOBUILD) -v

test:
	$(GOTEST) -v ./...

run:
	$(GOINSTALL) ./...
	$(BINARY_NAME) --debug

deps :
	$(GOGET) -v ./...

install : build
	cmd/writefreely/$(BINARY_NAME) --gen-keys
	cd less/; $(MAKE) install $(MFLAGS)

ui : force_look
	cd less/; $(MAKE) $(MFLAGS)

clean :
	cd less/; $(MAKE) clean $(MFLAGS)

force_look : 
	true
