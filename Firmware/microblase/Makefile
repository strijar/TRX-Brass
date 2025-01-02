CC = mb-gcc
OBJCOPY = mb-objcopy
OBJDUMP = mb-objdump

FW = mb

CFLAGS = -mhard-float -mxl-barrel-shift -ffast-math -mno-xl-soft-mul -mno-xl-soft-div -Iinc
CFLAGS += -O3 -Wall -Wa,-adhlns=$(subst $(suffix $<),.lst,$<)
LDFLAGS = -Wl,-T -Wl,mb.lds -nostartfiles -Wl,-Map=$(FW).map,--cref

OBJS = start.o main.o tfft.o

all: $(FW).code $(FW).data $(FW).dump

.c.o:
	$(CC) -c $(CFLAGS) $<

.s.o:
	$(CC) -c $<

$(FW): $(OBJS) mb.lds
	$(CC) -o $@ $(OBJS) $(LDFLAGS)

$(FW).code: $(FW)
	$(OBJCOPY) -O binary -j .text $(FW) $(FW).code

$(FW).data: $(FW)
	$(OBJCOPY) -O binary -j .data $(FW) $(FW).data

$(FW).dump: $(FW)
	$(OBJDUMP) -DSCz $(FW) > $(FW).dump

clean:
	rm *.o *.lst *.dump *.map *.code *.data $(FW)
