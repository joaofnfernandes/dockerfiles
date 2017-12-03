BUILD_DIR = bin
BOOK_NAME = product-management
METADATA_FILE = metadata.yaml
TOC_ARGS = --toc --toc-depth=2
CHAPTERS = chapters/*.md
IMG_DEPS = $(shell find img -type file -iname '*.svg' -o -iname '*.png')

.PHONY: default all mobi epub css

default: epub
all: epub mobi

mobi: $(BUILD_DIR)/$(BOOK_NAME).mobi
epub: $(BUILD_DIR)/$(BOOK_NAME).epub
css: css/stylesheet.css

# generate bin/product-management.epub
# $@ is the filename of the target rule
# $^ is the name of the prerequisites
$(BUILD_DIR)/$(BOOK_NAME).epub: $(METADATA_FILE) $(CHAPTERS) $(IMG_DEPS) $(BUILD_DIR)/.pandoc css/main.css
	@echo "Generating epub at $@"
	@mkdir -p $(BUILD_DIR)
	@docker run -v $(shell pwd):/src joaofnfernandes/pandoc \
		-f markdown+auto_identifiers \
		-t epub3 \
		$(TOC_ARGS) \
		-o $@ \
		$(METADATA_FILE) $(CHAPTERS)
	@open $(BUILD_DIR)/$(BOOK_NAME).epub

# Convert epub to mobi
$(BUILD_DIR)/$(BOOK_NAME).mobi: $(BUILD_DIR)/$(BOOK_NAME).epub $(BUILD_DIR)/.kindlegen
	@echo "Generating mobi at $@"
	@docker run -v $(shell pwd)/$(BUILD_DIR):/app joaofnfernandes/kindlegen \
		$(BOOK_NAME).epub -c2 \
		-o $(BOOK_NAME).mobi

################ Stylesheets #############################
STYLESHEETS = $(shell find stylesheets/ -type f -iname '*.scss')
css/main.css: $(STYLESHEETS)
	@mkdir -p css
	scss stylesheets/main.scss css/main.css

.PHONY: css-watch
css-watch:
	scss --watch stylesheets:css

# Test css stylesheets
.PHONY: css-test
css-test: css/main.css
	@cd css && python -m SimpleHTTPServer 8080

################ Docker images ############################

# Create a Docker image with Pandoc, and create a file on disk so that
# Make can track if the Docker image changed
$(BUILD_DIR)/.pandoc: Dockerfile.pandoc
	@echo "Creating Docker image with Pandoc"
	@mkdir -p $(BUILD_DIR)
	docker build -t joaofnfernandes/pandoc -f Dockerfile.pandoc .
	@touch $(BUILD_DIR)/.pandoc

# Docker image with Kindlegen
$(BUILD_DIR)/.kindlegen: Dockerfile.kindlegen
	@echo "Creating Docker image with Kindlegen"
	@mkdir -p $(BUILD_DIR)
	docker build -t joaofnfernandes/kindlegen -f Dockerfile.kindlegen .
	@touch $(BUILD_DIR)/.kindlegen


.PHONY: clean
clean:
	@echo "Cleaning project"
	@rm -rf $(BUILD_DIR)
