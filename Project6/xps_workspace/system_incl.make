#################################################################
# Makefile generated by Xilinx Platform Studio 
# Project:C:\Users\pi4810\Desktop\Lab6_1\xps_workspace\system.xmp
#
# WARNING : This file will be re-generated every time a command
# to run a make target is invoked. So, any changes made to this  
# file manually, will be lost when make is invoked next. 
#################################################################

SHELL = CMD

XILINX_EDK_DIR = C:/Xilinx/14.2/ISE_DS/EDK

SYSTEM = system

MHSFILE = system.mhs

FPGA_ARCH = virtex5

DEVICE = xc5vfx70tff1136-1

INTSTYLE = default

XPS_HDL_LANG = vhdl
GLOBAL_SEARCHPATHOPT = 
PROJECT_SEARCHPATHOPT = 

SEARCHPATHOPT = $(PROJECT_SEARCHPATHOPT) $(GLOBAL_SEARCHPATHOPT)

SUBMODULE_OPT = 

PLATGEN_OPTIONS = -p $(DEVICE) -lang $(XPS_HDL_LANG) -intstyle $(INTSTYLE) $(SEARCHPATHOPT) $(SUBMODULE_OPT) -msg __xps/ise/xmsgprops.lst

OBSERVE_PAR_OPTIONS = -error yes

MICROBLAZE_BOOTLOOP = $(XILINX_EDK_DIR)/sw/lib/microblaze/mb_bootloop.elf
MICROBLAZE_BOOTLOOP_LE = $(XILINX_EDK_DIR)/sw/lib/microblaze/mb_bootloop_le.elf
PPC405_BOOTLOOP = $(XILINX_EDK_DIR)/sw/lib/ppc405/ppc_bootloop.elf
PPC440_BOOTLOOP = $(XILINX_EDK_DIR)/sw/lib/ppc440/ppc440_bootloop.elf
BOOTLOOP_DIR = bootloops

MICROBLAZE_0_BOOTLOOP = $(BOOTLOOP_DIR)/microblaze_0.elf

BRAMINIT_ELF_IMP_FILES = $(MICROBLAZE_0_BOOTLOOP)
BRAMINIT_ELF_IMP_FILE_ARGS = -pe microblaze_0 $(MICROBLAZE_0_BOOTLOOP)

BRAMINIT_ELF_SIM_FILES = $(MICROBLAZE_0_BOOTLOOP)
BRAMINIT_ELF_SIM_FILE_ARGS = -pe microblaze_0 $(MICROBLAZE_0_BOOTLOOP)

SIM_CMD = isim_system

BEHAVIORAL_SIM_SCRIPT = simulation/behavioral/$(SYSTEM)_setup.tcl

STRUCTURAL_SIM_SCRIPT = simulation/structural/$(SYSTEM)_setup.tcl

TIMING_SIM_SCRIPT = simulation/timing/$(SYSTEM)_setup.tcl

DEFAULT_SIM_SCRIPT = $(BEHAVIORAL_SIM_SCRIPT)

SIMGEN_OPTIONS = -p $(DEVICE) -lang $(XPS_HDL_LANG) -intstyle $(INTSTYLE) $(SEARCHPATHOPT) $(BRAMINIT_ELF_SIM_FILE_ARGS) -msg __xps/ise/xmsgprops.lst -s isim -X C:/Users/pi4810/Desktop/Lab6_1/xps_workspace/


CORE_STATE_DEVELOPMENT_FILES = C:/Xilinx/14.2/ISE_DS/EDK/hw/XilinxProcessorIPLib/pcores/proc_common_v3_00_a/hdl/vhdl/proc_common_pkg.vhd \
C:/Xilinx/14.2/ISE_DS/EDK/hw/XilinxProcessorIPLib/pcores/proc_common_v3_00_a/hdl/vhdl/ipif_pkg.vhd \
C:/Xilinx/14.2/ISE_DS/EDK/hw/XilinxProcessorIPLib/pcores/proc_common_v3_00_a/hdl/vhdl/or_muxcy.vhd \
C:/Xilinx/14.2/ISE_DS/EDK/hw/XilinxProcessorIPLib/pcores/proc_common_v3_00_a/hdl/vhdl/or_gate128.vhd \
C:/Xilinx/14.2/ISE_DS/EDK/hw/XilinxProcessorIPLib/pcores/proc_common_v3_00_a/hdl/vhdl/family_support.vhd \
C:/Xilinx/14.2/ISE_DS/EDK/hw/XilinxProcessorIPLib/pcores/proc_common_v3_00_a/hdl/vhdl/pselect_f.vhd \
C:/Xilinx/14.2/ISE_DS/EDK/hw/XilinxProcessorIPLib/pcores/proc_common_v3_00_a/hdl/vhdl/counter_f.vhd \
C:/Xilinx/14.2/ISE_DS/EDK/hw/XilinxProcessorIPLib/pcores/proc_common_v3_00_a/hdl/vhdl/family.vhd \
C:/Xilinx/14.2/ISE_DS/EDK/hw/XilinxProcessorIPLib/pcores/proc_common_v3_00_a/hdl/vhdl/cntr_incr_decr_addn_f.vhd \
C:/Xilinx/14.2/ISE_DS/EDK/hw/XilinxProcessorIPLib/pcores/proc_common_v3_00_a/hdl/vhdl/muxf_struct_f.vhd \
C:/Xilinx/14.2/ISE_DS/EDK/hw/XilinxProcessorIPLib/pcores/proc_common_v3_00_a/hdl/vhdl/dynshreg_f.vhd \
C:/Xilinx/14.2/ISE_DS/EDK/hw/XilinxProcessorIPLib/pcores/proc_common_v3_00_a/hdl/vhdl/srl_fifo_rbu_f.vhd \
C:/Xilinx/14.2/ISE_DS/EDK/hw/XilinxProcessorIPLib/pcores/proc_common_v3_00_a/hdl/vhdl/srl_fifo_f.vhd \
C:/Xilinx/14.2/ISE_DS/EDK/hw/XilinxProcessorIPLib/pcores/plbv46_slave_single_v1_01_a/hdl/vhdl/plb_address_decoder.vhd \
C:/Xilinx/14.2/ISE_DS/EDK/hw/XilinxProcessorIPLib/pcores/plbv46_slave_single_v1_01_a/hdl/vhdl/plb_slave_attachment.vhd \
C:/Xilinx/14.2/ISE_DS/EDK/hw/XilinxProcessorIPLib/pcores/plbv46_slave_single_v1_01_a/hdl/vhdl/plbv46_slave_single.vhd \
pcores/encrypt_top_v1_00_a/synhdl/vhdl/PLB46S_if.vhd \
pcores/encrypt_top_v1_00_a/synhdl/verilog/encrypt_ExpandedKey_ram.v \
pcores/encrypt_top_v1_00_a/synhdl/verilog/encrypt_ExpandedKey.v \
pcores/encrypt_top_v1_00_a/synhdl/verilog/encrypt_RCon_rom.v \
pcores/encrypt_top_v1_00_a/synhdl/verilog/encrypt_RCon.v \
pcores/encrypt_top_v1_00_a/synhdl/verilog/encrypt_SBox_rom.v \
pcores/encrypt_top_v1_00_a/synhdl/verilog/encrypt_SBox.v \
pcores/encrypt_top_v1_00_a/synhdl/verilog/encrypt_StateArray_ram.v \
pcores/encrypt_top_v1_00_a/synhdl/verilog/encrypt_StateArray.v \
pcores/encrypt_top_v1_00_a/synhdl/verilog/encrypt_StateArrayTmp_ram.v \
pcores/encrypt_top_v1_00_a/synhdl/verilog/encrypt_StateArrayTmp.v \
pcores/encrypt_top_v1_00_a/synhdl/verilog/encrypt.v \
pcores/encrypt_top_v1_00_a/synhdl/vhdl/encrypt_CipherText_if_fifocore.vhd \
pcores/encrypt_top_v1_00_a/synhdl/vhdl/encrypt_CipherText_if.vhd \
pcores/encrypt_top_v1_00_a/synhdl/vhdl/encrypt_Key_if_fifocore.vhd \
pcores/encrypt_top_v1_00_a/synhdl/vhdl/encrypt_Key_if.vhd \
pcores/encrypt_top_v1_00_a/synhdl/vhdl/encrypt_PlainText_if_fifocore.vhd \
pcores/encrypt_top_v1_00_a/synhdl/vhdl/encrypt_PlainText_if.vhd \
pcores/encrypt_top_v1_00_a/synhdl/verilog/encrypt_ap_rst_if.v \
pcores/encrypt_top_v1_00_a/synhdl/verilog/encrypt_top.v

WRAPPER_NGC_FILES = implementation/system_microblaze_0_wrapper.ngc \
implementation/system_mb_plb_wrapper.ngc \
implementation/system_ilmb_wrapper.ngc \
implementation/system_dlmb_wrapper.ngc \
implementation/system_dlmb_cntlr_wrapper.ngc \
implementation/system_ilmb_cntlr_wrapper.ngc \
implementation/system_lmb_bram_wrapper.ngc \
implementation/system_rs232_uart_1_wrapper.ngc \
implementation/system_leds_8bit_wrapper.ngc \
implementation/system_leds_positions_wrapper.ngc \
implementation/system_sram_wrapper.ngc \
implementation/system_ddr2_sdram_wrapper.ngc \
implementation/system_dip_switches_8bit_wrapper.ngc \
implementation/system_clock_generator_0_wrapper.ngc \
implementation/system_mdm_0_wrapper.ngc \
implementation/system_proc_sys_reset_0_wrapper.ngc \
implementation/system_xps_timer_0_wrapper.ngc \
implementation/system_xps_intc_0_wrapper.ngc \
implementation/system_encrypt_top_0_wrapper.ngc \
implementation/system_fsl_v20_0_wrapper.ngc \
implementation/system_fsl_v20_1_wrapper.ngc \
implementation/system_fsl_v20_2_wrapper.ngc

POSTSYN_NETLIST = implementation/$(SYSTEM).ngc

SYSTEM_BIT = implementation/$(SYSTEM).bit

DOWNLOAD_BIT = implementation/download.bit

SYSTEM_ACE = implementation/$(SYSTEM).ace

UCF_FILE = data\system.ucf

BMM_FILE = implementation/$(SYSTEM).bmm

BITGEN_UT_FILE = etc/bitgen.ut

XFLOW_OPT_FILE = etc/fast_runtime.opt
XFLOW_DEPENDENCY = __xps/xpsxflow.opt $(XFLOW_OPT_FILE)

XPLORER_DEPENDENCY = __xps/xplorer.opt
XPLORER_OPTIONS = -p $(DEVICE) -uc $(SYSTEM).ucf -bm $(SYSTEM).bmm -max_runs 7

FPGA_IMP_DEPENDENCY = $(BMM_FILE) $(POSTSYN_NETLIST) $(UCF_FILE) $(XFLOW_DEPENDENCY)

SDK_EXPORT_DIR = SDK\SDK_Export\hw
SYSTEM_HW_HANDOFF = $(SDK_EXPORT_DIR)/$(SYSTEM).xml
SYSTEM_HW_HANDOFF_BIT = $(SDK_EXPORT_DIR)/$(SYSTEM).bit
SYSTEM_HW_HANDOFF_BMM = $(SDK_EXPORT_DIR)/$(SYSTEM)_bd.bmm
SYSTEM_HW_HANDOFF_DEP = $(SYSTEM_HW_HANDOFF) $(SYSTEM_HW_HANDOFF_BIT) $(SYSTEM_HW_HANDOFF_BMM)
