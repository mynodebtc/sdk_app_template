# Build tar.gz
.PHONY: build
build:
	@mkdir -p out
	@tar -czf out/sdk_application_template.tar.gz ./sampleapp

# Clean
.PHONY: clean
clean:
	@rm -rf out/*
	@rm -f release_app_template.sh

# Clone repo to get release tools
release_app_template.sh:
	@mkdir -p out
	@rm -rf out/mynode_release_tool
	@git clone git@github.com:mynodebtc/mynode_release_tool.git out/mynode_release_tool
	@cp out/mynode_release_tool/release_app_template.sh ./release_app_template.sh

# Release package to server
.PHONY: release
release: clean release_app_template.sh build
	@sh release_app_template.sh