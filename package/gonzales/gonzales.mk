GONZALES_VERSION = 0.1.3
GONZALES_SITE = $(call github,carpe-noctem-cassel,gonzales_bbb_port,0.1.4)

#GONZALES_DEPENDENCIES =

define GONZALES_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D) all
endef

define GONZALES_INSTALL_STAGING_CMDS
endef

define GONZALES_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 0755 $(@D)/gonzales_bbb $(TARGET_DIR)/usr/bin
endef

$(eval $(generic-package))
