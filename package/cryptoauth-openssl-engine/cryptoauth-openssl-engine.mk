#############################################################
#
# cryptoauth-openssl-engine
#
#############################################################

CRYPTOAUTH_OPENSSL_ENGINE_VERSION = a69a4f92af6bee9cb13035c2f859912744796380
CRYPTOAUTH_OPENSSL_ENGINE_SITE = $(call github,MicrochipTech,cryptoauth-openssl-engine,$(CRYPTOAUTH_OPENSSL_ENGINE_VERSION))
CRYPTOAUTH_OPENSSL_ENGINE_LICENSE = Microchip
CRYPTOAUTH_OPENSSL_ENGINE_LICENSE_FILES = LICENSE
CRYPTOAUTH_OPENSSL_ENGINE_DEPENDENCIES = openssl

define CRYPTOAUTH_OPENSSL_ENGINE_BUILD_CMDS
	$(MAKE1) $(TARGET_CONFIGURE_OPTS) CFLAGS="$(TARGET_CFLAGS)" \
	    LDFLAGS="$(TARGET_LDFLAGS) -L${STAGING_DIR}/usr/lib" \
	    -C $(@D)/cryptoauthlib libateccssl
endef

define CRYPTOAUTH_OPENSSL_ENGINE_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 755 $(@D)/cryptoauthlib/.build/libateccssl.so \
	    $(TARGET_DIR)/usr/lib/libateccssl.so
endef

$(eval $(generic-package))
