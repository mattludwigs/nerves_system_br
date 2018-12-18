################################################################################
#
# rpi-fbcp
#
################################################################################

RPI_FBCP_VERSION = 1c97e46cf7f4e2c04821f3c6289967032df92c6f
RPI_FBCP_SITE = $(call github,tasanakorn,rpi-fbcp,$(RPI_FBCP_VERSION))
RPI_FBCP_LICENSE = none
RPI_FBCP_DEPS = rpi-userland

$(eval $(cmake-package))
