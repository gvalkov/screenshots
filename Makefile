sources = $(wildcard full/*.png)
thumbs  = $(patsubst full/%.png,thumb/%.png,$(sources))

all: $(thumbs)

thumb/%.png: full/%.png
	convert -type palette $< -bordercolor "#CCCCCC" -border 3 -resize 25%  png8:$@

clean:
	rm -v thumbs/*

#vim:set ft=make ai noet sw=8 sts=8:
