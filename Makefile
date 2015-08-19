# Make PDF slides using Pandoc and LaTeX Beamer
# Use --incremental to "animate" the slides
clojure-unix.pdf: clojure-unix.md
	pandoc $^ \
	--from markdown \
	--to beamer \
	--slide-level 2 \
	--standalone \
	--include-in-header include.tex \
	--output $@

clean:
	rm -f clojure-unix.pdf
