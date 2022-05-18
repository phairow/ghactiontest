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

get-version:
	@echo $(strip $(shell git for-each-ref --sort=-creatordate --count=1 --format '%(refname:short)' refs/tags | sed -e 's/^v//'))
