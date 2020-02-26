DESCRIPTION = "PETALINUX image definition for Xilinx boards"
LICENSE = "MIT"

require recipes-core/images/petalinux-image-common.inc 

inherit extrausers 

IMAGE_INSTALL_append = "\
		run-postinsts \
		udev-extraconf \
		packagegroup-core-ssh-dropbear \
		ipserver \
		"
EXTRA_USERS_PARAMS = "\
	usermod -P zybo root; \
	useradd -P zybo zybo; \
	"
#EXTRA_USERS_PARAMS = "usermod -P root root;"
IMAGE_AUTOLOGIN = "1"