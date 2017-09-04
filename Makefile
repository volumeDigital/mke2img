SRC=	mke2img.o
LDFLAGS=	-lext2fs -lcom_err
TARGETS=	mke2img

mke2img:	$(SRC)
		$(CC) -o $@ $< $(LDFLAGS)

clean:
		-rm $(SRC) $(TARGETS)

