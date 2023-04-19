.DEFAULT_GOAL := run

run:
	./install

update-submodules:
	git submodule update --init --remote

lint:
	shellcheck -x zshrc bashrc config/*.sh config/*.bash
