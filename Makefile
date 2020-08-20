ifneq ($(KERNELRELEASE),)
obj-m := slcan.o
else
KERNELDIR ?= /lib/modules/$(shell uname -r)/build
PWD := $(shell pwd)
default:
	$(MAKE) -C $(KERNELDIR) M=$(PWD) modules

clean:
	@rm -rf .tmp* .slcan* Module* modules* slcan.*o slcan.mod*
endif
