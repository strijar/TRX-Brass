################################################################################
#
# libspecbleach
#
################################################################################

LIBSPECBLEACH_VERSION = ca90a65
LIBSPECBLEACH_SITE = $(call github,lucianodato,libspecbleach,$(LIBSPECBLEACH_VERSION))
LIBSPECBLEACH_INSTALL_STAGING = YES

LIBSPECBLEACH_CONF_OPTS += --optimization 3

$(eval $(meson-package))
