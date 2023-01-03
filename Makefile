
all: build install

build:
	ansible-galaxy collection build --force

install:
	# Performas a local install.
	ansible-galaxy collection install $(shell ls -1 tsolo-*.tar.gz | sort | tail -n 1) --force

format:
	test -d ~/src/ansible-utilities/bin && find . -name "*.yaml" -exec ~/src/ansible-utilities/bin/ansible-black {} \;

docs:
	test -d ~/src/ansible-utilities/bin && ~/src/ansible-utilities/bin/update_collection
