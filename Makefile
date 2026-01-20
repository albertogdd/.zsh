help:
	@printf "Available targets:\n\n"
	@awk '/^[a-zA-Z\-_0-9%:\\]+/ { \
	  helpMessage = match(lastLine, /^## (.*)/); \
	  if (helpMessage) { \
		helpCommand = $$1; \
		helpMessage = substr(lastLine, RSTART + 3, RLENGTH); \
  gsub("\\\\", "", helpCommand); \
  gsub(":+$$", "", helpCommand); \
		printf "  \x1b[32;01m%-35s \x1b[0m %s\n", helpCommand, helpMessage; \
	  } \
	} \
	{ lastLine = $$0 }' $(MAKEFILE_LIST) | sort -u
	@printf "\n"

## Install zsh and its submodules
install:
	@echo "Installing zsh..."
	@chmod +x script/install.sh
	@chmod +x script/upgrade.sh
	@./script/install.sh
	@echo "Zsh installed and configured!"

## Upgrade zsh submodules
upgrade:
	@echo "Upgrading zsh submodules..."
	@./script/upgrade.sh
	@echo "Zsh submodules upgraded!"