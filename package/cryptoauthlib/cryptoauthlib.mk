################################################################################
#
# cryptoauthlib
#
################################################################################

CRYPTOAUTHLIB_VERSION = linux-optional-udev
CRYPTOAUTHLIB_SITE = $(call github,fhunleth,cryptoauthlib,$(CRYPTOAUTHLIB_VERSION))
CRYPTOAUTHLIB_LICENSE = Microchip
CRYPTOAUTHLIB_LICENSE_FILES = LICENSE
CRYPTOAUTHLIB_INSTALL_STAGING = YES
CRYPTOAUTHLIB_SUBDIR = lib

$(eval $(cmake-package))
