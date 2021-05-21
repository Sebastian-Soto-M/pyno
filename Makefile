PYTHON = python3
SHELL = /bin/bash

.PHONY = help all setup run test clean
.DEFAULT_GOAL = help


help:
	@echo "---------------HELP-----------------"
	@echo "To setup the project type pymake setup"
	@echo "To test the project type pymake test"
	@echo "To run the project type pymake run"
	@echo "------------------------------------"

setup:
	$(PYTHON) -m venv env
	@echo "Now you must source the environment just created"

all:
	@test
	@install

run:
	$(PYTHON) -m pyno

test:
	$(PYTHON) -m tests