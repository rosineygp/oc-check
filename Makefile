.EXPORT_ALL_VARIABLES:
.ONESHELL:
SHELL = /bin/bash

define . =
	source .mkdkr
	$(eval MKDKR_JOB_NAME=$(shell bash -c 'source .mkdkr; .... $(@)'))
	trap '.' EXIT
endef

hadolint:
	@$(.)
	... hadolint/hadolint:latest-alpine
	.. hadolint Dockerfile
