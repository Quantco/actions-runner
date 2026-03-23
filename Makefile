DATE := $(shell date +%Y-%m-%d-%H-%M-%S)
VERSION := $(shell cat src/runnerversion)-qc-$(DATE)

.PHONY: release
release:
	git checkout -b releases/$(DATE)
	echo "$(VERSION)" > releaseVersion
	git add releaseVersion
	git commit -m "Release $(VERSION)"
	git push origin releases/$(DATE)
