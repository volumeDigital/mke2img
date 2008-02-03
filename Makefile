SRC=	mke2img.o
LDFLAGS=	-lext2fs
TARGETS=	mke2img

mke2img:	$(SRC)
		$(CC) -o $@ $< $(LDFLAGS)

clean:
		-rm $(SRC) $(TARGETS)

