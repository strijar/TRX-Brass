################################################################################
#
# rns
#
################################################################################

RNS_VERSION = 1.0.0
RNS_SOURCE = rns-$(RNS_VERSION).tar.gz
RNS_SITE = https://files.pythonhosted.org/packages/d9/17/c7b056c8c7f2d54d026c07470d6986aa71408677436cb5049e96f43b5cac
RNS_SETUP_TYPE = setuptools
RNS_DEPENDENCIES = python-cryptography

$(eval $(python-package))
