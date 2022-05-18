###
# General commands to instrument Paper Route
###

RELEASE_VERSION ?= 0.1

.PHONY: check-version

check-version:
ifndef RELEASE_VERSION
	$(error A valid Release Version was not found 😩)
else
	@echo "Release Version is ::> ${RELEASE_VERSION}"
endif