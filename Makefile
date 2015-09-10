# common config

PATH  := node_modules/.bin:$(PATH)
SHELL := /bin/bash

# web config
js_files = $(shell find ./lib -name '*.js')

# js hint
lint: $(js_files)
	jshint $?






.PHONY: clean_pyc
clean_pyc:
	@find `pwd` \( -name '*.pyc' -o -name '*.ptlc' \) -type f -delete