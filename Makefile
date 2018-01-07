BOOK_NAME = product-management
METADATA_FILE = metadata.yaml
TOC_ARGS = --toc --toc-depth=2
CHAPTERS = chapters/*.md
IMG_DEPS = $(shell find img -type file -iname '*.svg' -o -iname '*.png')

.PHONY: default all mobi epub css images

default: epub
all: epub mobi

mobi: bin/$(BOOK_NAME).mobi
epub: bin/$(BOOK_NAME).epub
css: css/main.css

images: bin/.pandoc bin/.kindlegen bin/.sass

# generate bin/product-management.epub
# $@ is the filename of the target rule
# $^ is the name of the prerequisites
bin/$(BOOK_NAME).epub: $(METADATA_FILE) $(CHAPTERS) $(IMG_DEPS) bin/.pandoc css/main.css
	@echo "Generating epub at $@"
	@mkdir -p bin
	@docker run -v $(shell pwd):/src joaofnfernandes/pandoc \
		-f markdown+auto_identifiers \
		-t epub3 \
		$(TOC_ARGS) \
		-o $@ \
		$(METADATA_FILE) $(CHAPTERS)

# Convert epub to mobi
bin/$(BOOK_NAME).mobi: bin/$(BOOK_NAME).epub bin/.kindlegen
	@echo "Generating mobi at $@"
	@docker run -v $(shell pwd)/bin:/app joaofnfernandes/kindlegen \
		$(BOOK_NAME).epub -c2 \
		-o $(BOOK_NAME).mobi

################ Stylesheets #############################
STYLESHEETS = $(shell find stylesheets/ -type f -iname '*.scss')
css/main.css: $(STYLESHEETS) bin/.sass
	@docker run -i -v $(shell pwd):/app joaofnfernandes/sass stylesheets/main.scss css/main.css

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
bin/.pandoc: Dockerfile.pandoc
	@echo "Creating Docker image with Pandoc"
	@mkdir -p bin
	docker build -t joaofnfernandes/pandoc -f Dockerfile.pandoc .
	@touch bin/.pandoc

# Docker image with Kindlegen
bin/.kindlegen: Dockerfile.kindlegen
	@echo "Creating Docker image with Kindlegen"
	@mkdir -p bin
	docker build -t joaofnfernandes/kindlegen -f Dockerfile.kindlegen .
	@touch bin/.kindlegen

# Docker image with Sass/Scss
bin/.sass: Dockerfile.sass
	@echo "Creating Docker image with sass"
	@mkdir -p bin
	docker build -t joaofnfernandes/sass -f Dockerfile.sass .
	@touch bin/.sass

.PHONY: clean
clean:
	@echo "Cleaning project"
	@rm -rf .sass-cache css/*.css* bin
