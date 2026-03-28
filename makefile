LSP_DIR := $(CURDIR)/.lsp-servers
BIN_DIR := $(LSP_DIR)/bin
NPM_DIR := $(LSP_DIR)/npm

.PHONY: all lsp-npm lsp-link clean-lsp

all: lsp-npm lsp-link

lsp-npm:
	cd $(NPM_DIR) && npm install

lsp-link:
	@mkdir -p $(BIN_DIR)
	@for bin in $(NPM_DIR)/node_modules/.bin/*; do \
		ln -sf "$$(realpath $$bin)" $(BIN_DIR)/$$(basename $$bin); \
	done

clean-lsp:
	rm -rf $(BIN_DIR)/* $(NPM_DIR)/node_modules
