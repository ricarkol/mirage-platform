OPAM_DIR=$(shell opam config var prefix)

CFLAGS=$(shell PKG_CONFIG_PATH=$(OPAM_DIR)/lib/pkgconfig pkg-config solo5-kernel-ukvm --cflags)
CFLAGS+=-Iinclude -I$(OPAM_DIR)/include

OBJS=\
src/mini_libc.o \
src/fmt_fp.o

.PHONY: build clean install uninstall
all: libsolo5posix.a
build: libsolo5posix.a

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

libsolo5posix.a: $(OBJS)
	$(AR) rcs $@ $(OBJS)

clean:
	rm -f src/*.o *.a

install:
	./install.sh

uninstall:
	./uninstall.sh

# .PHONY: build clean install

# build:
# 	./build.sh

# install:
# 	./install.sh

# clean:
# 	rm -f *.o

# uninstall:
# 	./uninstall.sh
