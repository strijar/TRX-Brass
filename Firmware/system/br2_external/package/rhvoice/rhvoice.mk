################################################################################
#
#  RHVoice speech synthesizer.
#
################################################################################

RHVOICE_VERSION = 1.14.0
RHVOICE_SITE = https://github.com/RHVoice/RHVoice.git
RHVOICE_LICENSE = GPLv2
RHVOICE_SITE_METHOD = git
RHVOICE_GIT_SUBMODULES = YES

RHVOICE_INSTALL_STAGING = YES
RHVOICE_DEPENDENCIES = host-scons

RHVOICE_VOICES = $(TARGET_DIR)/usr/share/RHVoice/voices
RHVOICE_LANGS = $(TARGET_DIR)/usr/share/RHVoice/languages

# Languages #

ifeq ($(BR2_PACKAGE_RHVOICE_ALBANIAN),y)
define RHVOICE_INSTALL_ALBANIAN
	mkdir -p $(RHVOICE_LANGS)/Albanian
	cp -a $(@D)/data/languages/Albanian/* $(RHVOICE_LANGS)/Albanian/
endef
	RHVOICE_POST_INSTALL_TARGET_HOOKS += RHVOICE_INSTALL_ALBANIAN
	RHVOICE_LANGUAGES += albanian
endif

ifeq ($(BR2_PACKAGE_RHVOICE_BRAZILIAN),y)
define RHVOICE_INSTALL_BRAZILIAN
	mkdir -p $(RHVOICE_LANGS)/Brazilian-Portuguese
	cp -a $(@D)/data/languages/Brazilian-Portuguese/* $(RHVOICE_LANGS)/Brazilian-Portuguese/
endef
	RHVOICE_POST_INSTALL_TARGET_HOOKS += RHVOICE_INSTALL_BRAZILIAN
	RHVOICE_LANGUAGES += brazilian-portuguese
endif

ifeq ($(BR2_PACKAGE_RHVOICE_CZECH),y)
define RHVOICE_INSTALL_CZECH
	mkdir -p $(RHVOICE_LANGS)/Czech
	cp -a $(@D)/data/languages/Czech/* $(RHVOICE_LANGS)/Czech/
endef
	RHVOICE_POST_INSTALL_TARGET_HOOKS += RHVOICE_INSTALL_CZECH
	RHVOICE_LANGUAGES += czech
endif

ifeq ($(BR2_PACKAGE_RHVOICE_ENGLISH),y)
define RHVOICE_INSTALL_ENGLISH
	mkdir -p $(RHVOICE_LANGS)/English
	cp -a $(@D)/data/languages/English/* $(RHVOICE_LANGS)/English/
endef
	RHVOICE_POST_INSTALL_TARGET_HOOKS += RHVOICE_INSTALL_ENGLISH
	RHVOICE_LANGUAGES += english
endif

ifeq ($(BR2_PACKAGE_RHVOICE_ESPERANTO),y)
define RHVOICE_INSTALL_ESPERANTO
	mkdir -p $(RHVOICE_LANGS)/Esperanto
	cp -a $(@D)/data/languages/Esperanto/* $(RHVOICE_LANGS)/Esperanto/
endef
	RHVOICE_POST_INSTALL_TARGET_HOOKS += RHVOICE_INSTALL_ESPERANTO
	RHVOICE_LANGUAGES += esperanto
endif

ifeq ($(BR2_PACKAGE_RHVOICE_KYRGYZ),y)
define RHVOICE_INSTALL_KYRGYZ
	mkdir -p $(RHVOICE_LANGS)/Kyrgyz
	cp -a $(@D)/data/languages/Kyrgyz/* $(RHVOICE_LANGS)/Kyrgyz/
endef
	RHVOICE_POST_INSTALL_TARGET_HOOKS += RHVOICE_INSTALL_KYRGYZ
	RHVOICE_LANGUAGES += kyrgyz
endif

ifeq ($(BR2_PACKAGE_RHVOICE_MACEDONIAN),y)
define RHVOICE_INSTALL_MACEDONIAN
	mkdir -p $(RHVOICE_LANGS)/Macedonian
	cp -a $(@D)/data/languages/Macedonian/* $(RHVOICE_LANGS)/Macedonian/
endef
	RHVOICE_POST_INSTALL_TARGET_HOOKS += RHVOICE_INSTALL_MACEDONIAN
	RHVOICE_LANGUAGES += macedonian
endif

ifeq ($(BR2_PACKAGE_RHVOICE_POLISH),y)
define RHVOICE_INSTALL_POLISH
	mkdir -p $(RHVOICE_LANGS)/Polish
	cp -a $(@D)/data/languages/Polish/* $(RHVOICE_LANGS)/Polish/
endef
	RHVOICE_POST_INSTALL_TARGET_HOOKS += RHVOICE_INSTALL_POLISH
	RHVOICE_LANGUAGES += polish
endif

ifeq ($(BR2_PACKAGE_RHVOICE_RUSSIAN),y)
define RHVOICE_INSTALL_RUSSIAN
	mkdir -p $(RHVOICE_LANGS)/Russian
	cp -a $(@D)/data/languages/Russian/* $(RHVOICE_LANGS)/Russian/
endef
	RHVOICE_POST_INSTALL_TARGET_HOOKS += RHVOICE_INSTALL_RUSSIAN
	RHVOICE_LANGUAGES += russian
endif

ifeq ($(BR2_PACKAGE_RHVOICE_SLOVAK),y)
define RHVOICE_INSTALL_SLOVAK
	mkdir -p $(RHVOICE_LANGS)/Slovak
	cp -a $(@D)/data/languages/Slovak/* $(RHVOICE_LANGS)/Slovak/
endef
	RHVOICE_POST_INSTALL_TARGET_HOOKS += RHVOICE_INSTALL_SLOVAK
	RHVOICE_LANGUAGES += slovak
endif

ifeq ($(BR2_PACKAGE_RHVOICE_TATAR),y)
define RHVOICE_INSTALL_TATAR
	mkdir -p $(RHVOICE_LANGS)/Tatar
	cp -a $(@D)/data/languages/Tatar/* $(RHVOICE_LANGS)/Tatar/
endef
	RHVOICE_POST_INSTALL_TARGET_HOOKS += RHVOICE_INSTALL_TATAR
	RHVOICE_LANGUAGES += tatar
endif

ifeq ($(BR2_PACKAGE_RHVOICE_UKRAINIAN),y)
define RHVOICE_INSTALL_UKRAINIAN
	mkdir -p $(RHVOICE_LANGS)/Ukrainian
	cp -a $(@D)/data/languages/Ukrainian/* $(RHVOICE_LANGS)/Ukrainian/
endef
	RHVOICE_POST_INSTALL_TARGET_HOOKS += RHVOICE_INSTALL_UKRAINIAN
	RHVOICE_LANGUAGES += ukrainian
endif

ifeq ($(BR2_PACKAGE_RHVOICE_UZBEK),y)
define RHVOICE_INSTALL_UZBEK
	mkdir -p $(RHVOICE_LANGS)/Uzbek
	cp -a $(@D)/data/languages/Uzbek/* $(RHVOICE_LANGS)/Uzbek/
endef
	RHVOICE_POST_INSTALL_TARGET_HOOKS += RHVOICE_INSTALL_UZBEK
	RHVOICE_LANGUAGES += uzbek
endif

# Voices #

ifeq ($(BR2_PACKAGE_RHVOICE_HANA),y)
define RHVOICE_INSTALL_HANA
	mkdir -p $(RHVOICE_VOICES)/hana
	cp -a $(@D)/data/voices/hana/* $(RHVOICE_VOICES)/hana/
endef
	RHVOICE_POST_INSTALL_TARGET_HOOKS += RHVOICE_INSTALL_HANA
endif

ifeq ($(BR2_PACKAGE_RHVOICE_LETICIA),y)
define RHVOICE_INSTALL_LETICIA
	mkdir -p $(RHVOICE_VOICES)/Leticia-F123
	cp -a $(@D)/data/voices/Leticia-F123/* $(RHVOICE_VOICES)/Leticia-F123/
endef
	RHVOICE_POST_INSTALL_TARGET_HOOKS += RHVOICE_INSTALL_LETICIA
endif

ifeq ($(BR2_PACKAGE_RHVOICE_ZDENEK),y)
define RHVOICE_INSTALL_ZDENEK
	mkdir -p $(RHVOICE_VOICES)/zdenek
	cp -a $(@D)/data/voices/zdenek/* $(RHVOICE_VOICES)/zdenek/
endef
	RHVOICE_POST_INSTALL_TARGET_HOOKS += RHVOICE_INSTALL_ZDENEK
endif

ifeq ($(BR2_PACKAGE_RHVOICE_ALAN),y)
define RHVOICE_INSTALL_ALAN
	mkdir -p $(RHVOICE_VOICES)/alan
	cp -a $(@D)/data/voices/alan/* $(RHVOICE_VOICES)/alan/
endef
	RHVOICE_POST_INSTALL_TARGET_HOOKS += RHVOICE_INSTALL_ALAN
endif

ifeq ($(BR2_PACKAGE_RHVOICE_BDL),y)
define RHVOICE_INSTALL_BDL
	mkdir -p $(RHVOICE_VOICES)/bdl
	cp -a $(@D)/data/voices/bdl/* $(RHVOICE_VOICES)/bdl/
endef
	RHVOICE_POST_INSTALL_TARGET_HOOKS += RHVOICE_INSTALL_BDL
endif

ifeq ($(BR2_PACKAGE_RHVOICE_CLB),y)
define RHVOICE_INSTALL_CLB
	mkdir -p $(RHVOICE_VOICES)/clb
	cp -a $(@D)/data/voices/clb/* $(RHVOICE_VOICES)/clb/
endef
	RHVOICE_POST_INSTALL_TARGET_HOOKS += RHVOICE_INSTALL_CLB
endif

ifeq ($(BR2_PACKAGE_RHVOICE_ENGENIY_EN),y)
define RHVOICE_INSTALL_ENGENIY_EN
	mkdir -p $(RHVOICE_VOICES)/evgeniy-eng
	cp -a $(@D)/data/voices/evgeniy-eng/* $(RHVOICE_VOICES)/evgeniy-eng/
endef
	RHVOICE_POST_INSTALL_TARGET_HOOKS += RHVOICE_INSTALL_ENGENIY_EN
endif

ifeq ($(BR2_PACKAGE_RHVOICE_LYUBOV),y)
define RHVOICE_INSTALL_LYUBOV
	mkdir -p $(RHVOICE_VOICES)/lyubov
	cp -a $(@D)/data/voices/lyubov/* $(RHVOICE_VOICES)/lyubov/
endef
	RHVOICE_POST_INSTALL_TARGET_HOOKS += RHVOICE_INSTALL_LYUBOV
endif

ifeq ($(BR2_PACKAGE_RHVOICE_SLT),y)
define RHVOICE_INSTALL_SLT
	mkdir -p $(RHVOICE_VOICES)/slt
	cp -a $(@D)/data/voices/slt/* $(RHVOICE_VOICES)/slt/
endef
	RHVOICE_POST_INSTALL_TARGET_HOOKS += RHVOICE_INSTALL_SLT
endif

ifeq ($(BR2_PACKAGE_RHVOICE_SPOMENKA),y)
define RHVOICE_INSTALL_SPOMENKA
	mkdir -p $(RHVOICE_VOICES)/spomenka
	cp -a $(@D)/data/voices/spomenka/* $(RHVOICE_VOICES)/spomenka/
endef
	RHVOICE_POST_INSTALL_TARGET_HOOKS += RHVOICE_INSTALL_SPOMENKA
endif

ifeq ($(BR2_PACKAGE_RHVOICE_AZAMAT),y)
define RHVOICE_INSTALL_AZAMAT
	mkdir -p $(RHVOICE_VOICES)/azamat
	cp -a $(@D)/data/voices/azamat/* $(RHVOICE_VOICES)/azamat/
endef
	RHVOICE_POST_INSTALL_TARGET_HOOKS += RHVOICE_INSTALL_AZAMAT
endif

ifeq ($(BR2_PACKAGE_RHVOICE_NAZGUL),y)
define RHVOICE_INSTALL_NAZGUL
	mkdir -p $(RHVOICE_VOICES)/nazgul
	cp -a $(@D)/data/voices/nazgul/* $(RHVOICE_VOICES)/nazgul/
endef
	RHVOICE_POST_INSTALL_TARGET_HOOKS += RHVOICE_INSTALL_NAZGUL
endif

ifeq ($(BR2_PACKAGE_RHVOICE_KIKO),y)
define RHVOICE_INSTALL_KIKO
	mkdir -p $(RHVOICE_VOICES)/kiko
	cp -a $(@D)/data/voices/kiko/* $(RHVOICE_VOICES)/kiko/
endef
	RHVOICE_POST_INSTALL_TARGET_HOOKS += RHVOICE_INSTALL_KIKO
endif

ifeq ($(BR2_PACKAGE_RHVOICE_SUZE),y)
define RHVOICE_INSTALL_SUZE
	mkdir -p $(RHVOICE_VOICES)/suze
	cp -a $(@D)/data/voices/suze/* $(RHVOICE_VOICES)/suze/
endef
	RHVOICE_POST_INSTALL_TARGET_HOOKS += RHVOICE_INSTALL_SUZE
endif

ifeq ($(BR2_PACKAGE_RHVOICE_ALICJA),y)
define RHVOICE_INSTALL_ALICJA
	mkdir -p $(RHVOICE_VOICES)/alicja
	cp -a $(@D)/data/voices/alicja/* $(RHVOICE_VOICES)/alicja/
endef
	RHVOICE_POST_INSTALL_TARGET_HOOKS += RHVOICE_INSTALL_ALICJA
endif

ifeq ($(BR2_PACKAGE_RHVOICE_CEZARY),y)
define RHVOICE_INSTALL_CEZARY
	mkdir -p $(RHVOICE_VOICES)/cezary
	cp -a $(@D)/data/voices/cezary/* $(RHVOICE_VOICES)/cezary/
endef
	RHVOICE_POST_INSTALL_TARGET_HOOKS += RHVOICE_INSTALL_CEZARY
endif

ifeq ($(BR2_PACKAGE_RHVOICE_MICHAL),y)
define RHVOICE_INSTALL_MICHAL
	mkdir -p $(RHVOICE_VOICES)/mikhail
	cp -a $(@D)/data/voices/mikhail/* $(RHVOICE_VOICES)/mikhail/
endef
	RHVOICE_POST_INSTALL_TARGET_HOOKS += RHVOICE_INSTALL_MICHAL
endif

ifeq ($(BR2_PACKAGE_RHVOICE_NATAN),y)
define RHVOICE_INSTALL_NATAN
	mkdir -p $(RHVOICE_VOICES)/natan
	cp -a $(@D)/data/voices/natan/* $(RHVOICE_VOICES)/natan/
endef
	RHVOICE_POST_INSTALL_TARGET_HOOKS += RHVOICE_INSTALL_NATAN
endif

ifeq ($(BR2_PACKAGE_RHVOICE_ALEKSANDR_HQ),y)
define RHVOICE_INSTALL_ALEKSANDR_HQ
	mkdir -p $(RHVOICE_VOICES)/aleksandr-hq
	cp -a $(@D)/data/voices/aleksandr-hq/* $(RHVOICE_VOICES)/aleksandr-hq/
endef
	RHVOICE_POST_INSTALL_TARGET_HOOKS += RHVOICE_INSTALL_ALEKSANDR_HQ
endif

ifeq ($(BR2_PACKAGE_RHVOICE_ALEKSANDR),y)
define RHVOICE_INSTALL_ALEKSANDR
	mkdir -p $(RHVOICE_VOICES)/aleksandr
	cp -a $(@D)/data/voices/aleksandr/* $(RHVOICE_VOICES)/aleksandr/
endef
	RHVOICE_POST_INSTALL_TARGET_HOOKS += RHVOICE_INSTALL_ALEKSANDR
endif

ifeq ($(BR2_PACKAGE_RHVOICE_ANNA),y)
define RHVOICE_INSTALL_ANNA
	mkdir -p $(RHVOICE_VOICES)/anna
	cp -a $(@D)/data/voices/anna/* $(RHVOICE_VOICES)/anna/
endef
	RHVOICE_POST_INSTALL_TARGET_HOOKS += RHVOICE_INSTALL_ANNA
endif

ifeq ($(BR2_PACKAGE_RHVOICE_ARINA),y)
define RHVOICE_INSTALL_ARINA
	mkdir -p $(RHVOICE_VOICES)/arina
	cp -a $(@D)/data/voices/arina/* $(RHVOICE_VOICES)/arina/
endef
	RHVOICE_POST_INSTALL_TARGET_HOOKS += RHVOICE_INSTALL_ARINA
endif

ifeq ($(BR2_PACKAGE_RHVOICE_ARTEMIY),y)
define RHVOICE_INSTALL_ARTEMIY
	mkdir -p $(RHVOICE_VOICES)/artemiy
	cp -a $(@D)/data/voices/artemiy/* $(RHVOICE_VOICES)/artemiy/
endef
	RHVOICE_POST_INSTALL_TARGET_HOOKS += RHVOICE_INSTALL_ARTEMIY
endif

ifeq ($(BR2_PACKAGE_RHVOICE_ELENA),y)
define RHVOICE_INSTALL_ELENA
	mkdir -p $(RHVOICE_VOICES)/elena
	cp -a $(@D)/data/voices/elena/* $(RHVOICE_VOICES)/elena/
endef
	RHVOICE_POST_INSTALL_TARGET_HOOKS += RHVOICE_INSTALL_ELENA
endif

ifeq ($(BR2_PACKAGE_RHVOICE_EVGENIY_RU),y)
define RHVOICE_INSTALL_EVGENIY_RU
	mkdir -p $(RHVOICE_VOICES)/evgeniy-rus
	cp -a $(@D)/data/voices/evgeniy-rus/* $(RHVOICE_VOICES)/evgeniy-rus/
endef
	RHVOICE_POST_INSTALL_TARGET_HOOKS += RHVOICE_INSTALL_EVGENIY_RU
endif

ifeq ($(BR2_PACKAGE_RHVOICE_IRINA),y)
define RHVOICE_INSTALL_IRINA
	mkdir -p $(RHVOICE_VOICES)/irina
	cp -a $(@D)/data/voices/irina/* $(RHVOICE_VOICES)/irina/
endef
	RHVOICE_POST_INSTALL_TARGET_HOOKS += RHVOICE_INSTALL_IRINA
endif

ifeq ($(BR2_PACKAGE_RHVOICE_MIKHAIL),y)
define RHVOICE_INSTALL_MIKHAIL
	mkdir -p $(RHVOICE_VOICES)/mikhail
	cp -a $(@D)/data/voices/mikhail/* $(RHVOICE_VOICES)/mikhail/
endef
	RHVOICE_POST_INSTALL_TARGET_HOOKS += RHVOICE_INSTALL_MIKHAIL
endif

ifeq ($(BR2_PACKAGE_RHVOICE_PAVEL),y)
define RHVOICE_INSTALL_PAVEL
	mkdir -p $(RHVOICE_VOICES)/pavel
	cp -a $(@D)/data/voices/pavel/* $(RHVOICE_VOICES)/pavel/
endef
	RHVOICE_POST_INSTALL_TARGET_HOOKS += RHVOICE_INSTALL_PAVEL
endif

ifeq ($(BR2_PACKAGE_RHVOICE_TATIANA),y)
define RHVOICE_INSTALL_TATIANA
	mkdir -p $(RHVOICE_VOICES)/tatiana
	cp -a $(@D)/data/voices/tatiana/* $(RHVOICE_VOICES)/tatiana/
endef
	RHVOICE_POST_INSTALL_TARGET_HOOKS += RHVOICE_INSTALL_TATIANA
endif

ifeq ($(BR2_PACKAGE_RHVOICE_TIMOFEY),y)
define RHVOICE_INSTALL_TIMOFEY
	mkdir -p $(RHVOICE_VOICES)/timofey
	cp -a $(@D)/data/voices/timofey/* $(RHVOICE_VOICES)/timofey/
endef
	RHVOICE_POST_INSTALL_TARGET_HOOKS += RHVOICE_INSTALL_TIMOFEY
endif

ifeq ($(BR2_PACKAGE_RHVOICE_UMKA),y)
define RHVOICE_INSTALL_UMKA
	mkdir -p $(RHVOICE_VOICES)/umka
	cp -a $(@D)/data/voices/umka/* $(RHVOICE_VOICES)/umka/
endef
	RHVOICE_POST_INSTALL_TARGET_HOOKS += RHVOICE_INSTALL_UMKA
endif

ifeq ($(BR2_PACKAGE_RHVOICE_VICTORIA),y)
define RHVOICE_INSTALL_VICTORIA
	mkdir -p $(RHVOICE_VOICES)/victoria
	cp -a $(@D)/data/voices/victoria/* $(RHVOICE_VOICES)/victoria/
endef
	RHVOICE_POST_INSTALL_TARGET_HOOKS += RHVOICE_INSTALL_VICTORIA
endif

ifeq ($(BR2_PACKAGE_RHVOICE_VITALIY_NG),y)
define RHVOICE_INSTALL_VITALIY_NG
	mkdir -p $(RHVOICE_VOICES)/vitaliy-ng
	cp -a $(@D)/data/voices/vitaliy-ng/* $(RHVOICE_VOICES)/vitaliy-ng/
endef
	RHVOICE_POST_INSTALL_TARGET_HOOKS += RHVOICE_INSTALL_VITALIY_NG
endif

ifeq ($(BR2_PACKAGE_RHVOICE_VITALIY),y)
define RHVOICE_INSTALL_VITALIY
	mkdir -p $(RHVOICE_VOICES)/vitaliy
	cp -a $(@D)/data/voices/vitaliy/* $(RHVOICE_VOICES)/vitaliy/
endef
	RHVOICE_POST_INSTALL_TARGET_HOOKS += RHVOICE_INSTALL_VITALIY
endif

ifeq ($(BR2_PACKAGE_RHVOICE_VSEVOLOD),y)
define RHVOICE_INSTALL_VSEVOLOD
	mkdir -p $(RHVOICE_VOICES)/vsevolod
	cp -a $(@D)/data/voices/vsevolod/* $(RHVOICE_VOICES)/vsevolod/
endef
	RHVOICE_POST_INSTALL_TARGET_HOOKS += RHVOICE_INSTALL_VSEVOLOD
endif

ifeq ($(BR2_PACKAGE_RHVOICE_YURIY),y)
define RHVOICE_INSTALL_YURIY
	mkdir -p $(RHVOICE_VOICES)/yuriy
	cp -a $(@D)/data/voices/yuriy/* $(RHVOICE_VOICES)/yuriy/
endef
	RHVOICE_POST_INSTALL_TARGET_HOOKS += RHVOICE_INSTALL_YURIY
endif

ifeq ($(BR2_PACKAGE_RHVOICE_ONDRO),y)
define RHVOICE_INSTALL_ONDRO
	mkdir -p $(RHVOICE_VOICES)/ondro
	cp -a $(@D)/data/voices/ondro/* $(RHVOICE_VOICES)/ondro/
endef
	RHVOICE_POST_INSTALL_TARGET_HOOKS += RHVOICE_INSTALL_ONDRO
endif

ifeq ($(BR2_PACKAGE_RHVOICE_TALGAT),y)
define RHVOICE_INSTALL_TALGAT
	mkdir -p $(RHVOICE_VOICES)/talgat
	cp -a $(@D)/data/voices/talgat/* $(RHVOICE_VOICES)/talgat/
endef
	RHVOICE_POST_INSTALL_TARGET_HOOKS += RHVOICE_INSTALL_TALGAT
endif

ifeq ($(BR2_PACKAGE_RHVOICE_ANATOL),y)
define RHVOICE_INSTALL_ANATOL
	mkdir -p $(RHVOICE_VOICES)/anatol
	cp -a $(@D)/data/voices/anatol/* $(RHVOICE_VOICES)/anatol/
endef
	RHVOICE_POST_INSTALL_TARGET_HOOKS += RHVOICE_INSTALL_ANATOL
endif

ifeq ($(BR2_PACKAGE_RHVOICE_MARIANNA),y)
define RHVOICE_INSTALL_MARIANNA
	mkdir -p $(RHVOICE_VOICES)/marianna
	cp -a $(@D)/data/voices/marianna/* $(RHVOICE_VOICES)/marianna/
endef
	RHVOICE_POST_INSTALL_TARGET_HOOKS += RHVOICE_INSTALL_MARIANNA
endif

ifeq ($(BR2_PACKAGE_RHVOICE_NATALIA),y)
define RHVOICE_INSTALL_NATALIA
	mkdir -p $(RHVOICE_VOICES)/natalia
	cp -a $(@D)/data/voices/natalia/* $(RHVOICE_VOICES)/natalia/
endef
	RHVOICE_POST_INSTALL_TARGET_HOOKS += RHVOICE_INSTALL_NATALIA
endif

ifeq ($(BR2_PACKAGE_RHVOICE_VOLODYMYR),y)
define RHVOICE_INSTALL_VOLODYMYR
	mkdir -p $(RHVOICE_VOICES)/volodymyr
	cp -a $(@D)/data/voices/volodymyr/* $(RHVOICE_VOICES)/volodymyr/
endef
	RHVOICE_POST_INSTALL_TARGET_HOOKS += RHVOICE_INSTALL_VOLODYMYR
endif

ifeq ($(BR2_PACKAGE_RHVOICE_SEVINCH),y)
define RHVOICE_INSTALL_SEVINCH
	mkdir -p $(RHVOICE_VOICES)/sevinch
	cp -a $(@D)/data/voices/sevinch/* $(RHVOICE_VOICES)/sevinch/
endef
	RHVOICE_POST_INSTALL_TARGET_HOOKS += RHVOICE_INSTALL_SEVINCH
endif

RHVOICE_SCONS_OPTS = \
	prefix=/usr \
	audio_libs=pulse \
	languages=$(subst $(space),$(comma),$(strip $(RHVOICE_LANGUAGES)))

# Build #

define RHVOICE_BUILD_CMDS
	(cd $(@D); \
		$(TARGET_CONFIGURE_OPTS) CROSS=$(TARGET_CROSS) \
		$(SCONS) \
		$(RHVOICE_SCONS_OPTS))
endef

# Install target #

define RHVOICE_INSTALL_TARGET_CMDS
	cp -a $(@D)/build/linux/{audio,core,lib}/libRHVoice* $(TARGET_DIR)/usr/lib/
	cp -a $(@D)/build/linux/test/RHVoice-test $(TARGET_DIR)/usr/bin/
endef

# Install staging #

define RHVOICE_INSTALL_STAGING_CMDS
	mkdir -p $(STAGING_DIR)/usr/include/RHVoice/core
	cp -a $(@D)/src/include/*.{h,hpp} $(STAGING_DIR)/usr/include/RHVoice/
	cp -a $(@D)/src/include/core/*.{h,hpp} $(STAGING_DIR)/usr/include/RHVoice/core/
	cp -a $(@D)/build/linux/{audio,core,lib}/libRHVoice* $(STAGING_DIR)/usr/lib/
endef

$(eval $(generic-package))
