GONZALES_VERSION = 0.1
GONZALES_SOURCE = "https://github.com/carpe-noctem-cassel/gonzales_bbb_port.git"
GONZALES_SITE = "https://github.com/carpe-noctem-cassel/gonzales_bbb_port"
GONZALES_SITE_METHOD = git
#GONZALES_DEPENDENCIES =

define GONZALES_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D) all
enddef

define GONZALES_INSTALL_STAGING_CMDS
endif

define GONZALES_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 0644 $(@D)/gonzales_bbb $(TARGET_DIR)/usr/lib
endif

$(eval $(generic-package))
