# Updated default dropbear configuration
FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

SRC_URI += "file://dropbear_fix.default"

do_install_append() {
	#install -d ${D}${sysconfdir}/default
	install -m 0644 ${WORKDIR}/dropbear_fix.default ${D}${sysconfdir}/default/dropbear
}
