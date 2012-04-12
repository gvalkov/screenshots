sources = $(wildcard full/*.png)
thumbs  = $(patsubst full/%.png,thumb/%.png,$(sources))

all: $(thumbs)

thumb/%.png: full/%.png
	convert -type palette $< -bordercolor "#CCCCCC" -border 3 -resize 25%  png8:$@

palette-sources: 
	for i in full/*.png; do \
		convert -type palette $$i png8:$$i ; done 

clean:
	rm -v thumbs/*

#vim:set ft=make ai noet sw=8 sts=8:
