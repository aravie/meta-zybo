
YAML_CONSOLE_DEVICE_CONFIG_forcevariable = "ps7_uart_1"
KERNEL_DTS_INCLUDE = "${STAGING_KERNEL_DIR}/include"
YAML_MAIN_MEMORY_CONFIG_forcevariable = "PS7_DDR_0"
DT_PADDING_SIZE = "0x1000"
FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
DEVICETREE_FLAGS += ""
SRC_URI_append ="\
	file://system-top.dts\
	file://zynq-7000.dtsi\
	file://pcw.dtsi\
	file://system-user.dtsi\
	file://system-conf.dtsi\
"

do_configure_append () {
    cp ${WORKDIR}/system-top.dts ${XSCTH_WS}/${XSCTH_PROJ}/system-top.dts
	cp ${WORKDIR}/zynq-7000.dtsi ${XSCTH_WS}/${XSCTH_PROJ}/zynq-7000.dtsi
	cp ${WORKDIR}/pcw.dtsi ${XSCTH_WS}/${XSCTH_PROJ}/pcw.dtsi
	cp ${WORKDIR}/system-user.dtsi ${XSCTH_WS}/${XSCTH_PROJ}/system-user.dtsi
	cp ${WORKDIR}/system-conf.dtsi ${XSCTH_WS}/${XSCTH_PROJ}/system-conf.dtsi
}