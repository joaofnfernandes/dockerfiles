# Pandoc

The swiss-army knife to convert between markup formats.
Mount a local directory into `/src` to create content locally.

```
docker run -v $(pwd):/source jagregory/pandoc \
-f markdown -t epub3 -o book.epub metadata.yaml chapters/chapter-1.md
```
