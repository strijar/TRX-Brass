################################################################################
#
# codec2
#
################################################################################

CODEC2_VERSION = 1.2.0
CODEC2_SITE = $(call github,drowe67,codec2,$(CODEC2_VERSION))
CODEC2_SUPPORTS_IN_SOURCE_BUILD = NO
CODEC2_INSTALL_STAGING = YES

$(eval $(cmake-package))
