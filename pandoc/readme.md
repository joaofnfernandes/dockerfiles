# Pandoc

The swiss-army knife to convert between markup formats.
Mount a local directory into `/src` to create content locally.

```
docker run --name pandoc \
  --volume $(pwd):/src joaofnfernandes/pandoc \
  --from markdown_github --to epub3 --output book.epub \
  --epub-metadata metadata.yaml \
  chapter-1.md \
  chapter-2.md
```
