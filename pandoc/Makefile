BUILD_DIR = bin
BOOK_NAME = product-management
METADATA_FILE = metadata.yaml
TOC_ARGS = --toc --toc-depth=2
CHAPTERS = chapters/*.md

# generate bin/product-management.epub
# $@ is the filename of the target rule
# $^ is the name of the prerequisites
$(BUILD_DIR)/$(BOOK_NAME).epub: $(METADATA_FILE) $(CHAPTERS) $(BUILD_DIR)/.pandoc
	@echo "Generating ebook at $@"
	@mkdir -p $(BUILD_DIR)
	@docker run -v $(shell pwd):/src joaofnfernandes/pandoc \
		-f markdown -t epub3 \
		$(TOC_ARGS) \
		-o $@ \
		$(METADATA_FILE) $(CHAPTERS)

# Create a Docker image with Pandoc, and create a file on disk so that
# Make can track if the Docker image changed
$(BUILD_DIR)/.pandoc: Dockerfile
	@echo "Creating Docker image with Pandoc"
	@mkdir -p $(BUILD_DIR)
	docker build -t joaofnfernandes/pandoc .
	@touch $(BUILD_DIR)/.pandoc

.PHONY: clean
clean:
	@echo "Cleaning project"
	@rm -rf $(BUILD_DIR) $(BUILD_DIR)
