CC = gcc

PKGS = sdl2 SDL2_image SDL2_mixer SDL2_ttf

CFLAGS += -Wall -Wextra -std=c11
CFLAGS += $(shell pkg-config --cflags $(PKGS))

LDLIBS += $(shell pkg-config --libs $(PKGS))
LDLIBS += -lm

SOURCES = main.c logic.c sounds.c texts.c render.c input.c \
          menu.c stage.c random.c common.c danmaku.c collision.c \
          player.c shot.c enemy.c item.c pointer.c

omain.out: $(SOURCES)
	$(CC) $(CFLAGS) $(SOURCES) -o $@ $(LDLIBS)

clean:
	rm -f omain.out

.PHONY: clean