################################################################################
#
# axis-fifo
#
################################################################################

AXIS_FIFO_VERSION = 69375f12c2393c1c982a05b14e2a9515ad3d6b67
AXIS_FIFO_SITE = $(call github,jacobfeder,axisfifo,$(AXIS_FIFO_VERSION))
AXIS_FIFO_LICENSE = GPL-3.0
AXIS_FIFO_LICENSE_FILES = LICENSE

$(eval $(kernel-module))
$(eval $(generic-package))
