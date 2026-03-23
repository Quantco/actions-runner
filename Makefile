DATE := $(shell date +%Y%m%d-%H%M%S)
VERSION := $(shell cat src/runnerversion)-qc-$(DATE)

.PHONY: release
release:
	git checkout -b releases/$(DATE)
	echo "$(VERSION)" > src/runnerversion
	cat src/runnerversion > releaseVersion
	git add src/runnerversion releaseVersion
	git commit -m "Release $(VERSION)"
	git push origin releases/$(DATE)
