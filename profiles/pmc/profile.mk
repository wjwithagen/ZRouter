#
#
#

KERNCONF_OPTIONS+=		HWPMC_HOOKS
KERNCONF_MODULES_OVERRIDE+=	hwpmc_mips24k
WORLD_SUBDIRS_LIB+=     	libpmc libpmcstat
WORLD_SUBDIRS_USR_SBIN+=	pmcstat pmccontrol
