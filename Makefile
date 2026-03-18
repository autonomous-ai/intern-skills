VERSION_FILE := version.txt
MANIFEST_FILE := manifest.json
SKILLS_DIR := skills
ZIP_DIR := skills_zip

CURRENT_VERSION := $(shell tr -d '[:space:]' < $(VERSION_FILE))

.PHONY: help version zip clean release-patch release-minor release-major release

help: ## Show available commands
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "  \033[36m%-20s\033[0m %s\n", $$1, $$2}'

version: ## Show current version
	@echo $(CURRENT_VERSION)

zip: ## Rebuild all skill zip files
	@mkdir -p $(ZIP_DIR)
	@for role_dir in $(SKILLS_DIR)/*/; do \
		role_name=$$(basename "$$role_dir"); \
		zip_file="$(ZIP_DIR)/$$role_name.zip"; \
		rm -f "$$zip_file"; \
		(cd $(SKILLS_DIR) && zip -r -q "$$zip_file" "$$role_name"/); \
		echo "  [✓] Packed $$role_name.zip"; \
	done

clean: ## Remove all zip files
	rm -rf $(ZIP_DIR)/*.zip

release-patch: ## Release patch version (1.0.0 -> 1.0.1)
	@./release.sh patch

release-minor: ## Release minor version (1.0.0 -> 1.1.0)
	@./release.sh minor

release-major: ## Release major version (1.0.0 -> 2.0.0)
	@./release.sh major

release: ## Release with custom version (usage: make release V=2.3.1)
	@test -n "$(V)" || (echo "Usage: make release V=x.y.z" && exit 1)
	@./release.sh $(V)
