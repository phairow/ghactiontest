###
# General commands to instrument Paper Route
###

.PHONY: check-version get-version

check-version:
ifndef RELEASE_VERSION
	$(error A valid Release Version was not found 😩)
else
	@echo "Release Version is ::> ${RELEASE_VERSION}"
endif
