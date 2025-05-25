################################################################################
#
# libcyaml
#
################################################################################

LIBCYAML_VERSION = 1.4.2
LIBCYAML_SITE = $(call github,tlsa,libcyaml,v$(LIBCYAML_VERSION))
LIBCYAML_DEPENDENCIES = libyaml
LIBCYAML_INSTALL_STAGING = YES

define LIBCYAML_BUILD_CMDS
	$(TARGET_MAKE_ENV) $(MAKE1) \
		CC="$(TARGET_CC) $(TARGET_CFLAGS) $(TARGET_LDFLAGS)" \
		WARNINGS="" -C $(@D) all
endef

define LIBCYAML_INSTALL_STAGING_CMDS
	$(TARGET_MAKE_ENV) $(MAKE) DESTDIR="$(STAGING_DIR)" PREFIX="/usr" -C $(@D) install
endef

define LIBCYAML_INSTALL_TARGET_CMDS
	$(TARGET_MAKE_ENV) $(MAKE) DESTDIR="$(TARGET_DIR)" PREFIX="/usr" -C $(@D) install
endef

$(eval $(generic-package))
