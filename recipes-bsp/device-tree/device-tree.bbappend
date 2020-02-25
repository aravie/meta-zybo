
YAML_CONSOLE_DEVICE_CONFIG_forcevariable = "ps7_uart_1"
KERNEL_DTS_INCLUDE = "${STAGING_KERNEL_DIR}/include"
YAML_MAIN_MEMORY_CONFIG_forcevariable = "PS7_DDR_0"
export PETALINUX = "/home/dev/Xilinx/petalinux_2019.2"
sysconf = "${TOPDIR}/../project-spec/configs"
XSCTH_WS = "${TOPDIR}/../components/plnx_workspace/device-tree"
DT_PADDING_SIZE = "0x1000"
FILESEXTRAPATHS_append := ":${sysconf}"
FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
DEVICETREE_FLAGS += ""
SRC_URI_append ="\
    file://config\
	file://system-user.dtsi\
"
do_configure_append () {
	script="${PETALINUX}/etc/hsm/scripts/petalinux_hsm_bridge.tcl"
	data=${PETALINUX}/etc/hsm/data/
	eval xsct -sdx -nodisp ${script} -c ${WORKDIR}/config \
	-hdf ${DT_FILES_PATH}/hardware_description.${HDF_EXT} -repo ${S}\
	-data ${data} -sw ${DT_FILES_PATH} -o ${DT_FILES_PATH} -a "soc_mapping"
}
