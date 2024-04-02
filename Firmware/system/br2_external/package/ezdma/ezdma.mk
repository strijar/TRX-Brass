################################################################################
#
# ezdma
#
################################################################################

EZDMA_VERSION = b9e1653189613cecaa8e3f986953706108e39920
EZDMA_SITE = $(call github,jeremytrimble,ezdma,$(EZDMA_VERSION))
EZDMA_LICENSE = GPL-2.0
EZDMA_LICENSE_FILES = LICENSE

EZDMA_MODULE_SUBDIRS = drivers/dma
EZDMA_MODULE_MAKE_OPTS = CONFIG_EZDMA=m KVER=$(LINUX_VERSION_PROBED)

$(eval $(kernel-module))
$(eval $(generic-package))
