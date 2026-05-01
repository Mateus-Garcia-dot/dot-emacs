LSP_DIR  := $(CURDIR)/.lsp-servers
BIN_DIR  := $(LSP_DIR)/bin
NPM_DIR  := $(LSP_DIR)/npm
PHP_DIR  := $(LSP_DIR)/phpactor

NPM_BINS := bash-language-server typescript-language-server tsserver

.PHONY: all install submodules lsp-npm lsp-php lsp-link clean check-deps help

all: help

install: check-deps submodules lsp-npm lsp-php lsp-link
	@echo "LSP servers installed."

submodules:
	git submodule update --init --recursive

lsp-npm:
	cd $(NPM_DIR) && npm install

lsp-php:
	cd $(PHP_DIR) && composer install --no-dev --optimize-autoloader

lsp-link:
	@mkdir -p $(BIN_DIR)
	@for bin in $(NPM_BINS); do \
		ln -sf "$$(realpath $(NPM_DIR)/node_modules/.bin/$$bin)" $(BIN_DIR)/$$bin; \
	done
	@ln -sf ../phpactor/bin/phpactor $(BIN_DIR)/phpactor
	@echo "Symlinks created in $(BIN_DIR)"

clean:
	rm -rf $(BIN_DIR)/* $(NPM_DIR)/node_modules $(PHP_DIR)/vendor

check-deps:
	@command -v node     >/dev/null || (echo "Error: node not found"; exit 1)
	@command -v npm      >/dev/null || (echo "Error: npm not found"; exit 1)
	@command -v php      >/dev/null || (echo "Error: php not found"; exit 1)
	@command -v composer >/dev/null || (echo "Error: composer not found"; exit 1)

help:
	@echo "Usage: make <target>"
	@echo ""
	@echo "  install    Full install: submodules + npm + phpactor + symlinks"
	@echo "  clean      Remove node_modules, phpactor vendor, and bin symlinks"
	@echo "  submodules Init git submodules"
	@echo "  lsp-npm    Install npm packages only"
	@echo "  lsp-php    Install phpactor composer deps only"
	@echo "  lsp-link   Recreate bin symlinks only"
