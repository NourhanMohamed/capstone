SHELL := /bin/bash

install:
	# This should be run from inside a virtualenv
	pip install --upgrade pip &&\
		pip install --trusted-host pypi.python.org -r requirements.txt

lint:
	pylint --disable=R,C,W1203 app.py

all: install lint
