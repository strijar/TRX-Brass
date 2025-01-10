################################################################################
#
# lpcnet
#
################################################################################

LPCNET_VERSION = 0.5
LPCNET_SITE = $(call github,drowe67,LPCNet,v$(LPCNET_VERSION))
LPCNET_SUPPORTS_IN_SOURCE_BUILD = NO
LPCNET_INSTALL_STAGING = YES
LPCNET_CONF_OPTS += \
	-DAVX=OFF \
	-DAVX2=OFF \
	-DSSE=OFF

$(eval $(cmake-package))
