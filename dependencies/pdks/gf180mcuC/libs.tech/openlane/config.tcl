# Process node
set ::env(PROCESS) 180
set ::env(DEF_UNITS_PER_MICRON) 2000

set ::env(VDD_PIN) "VDD"
set ::env(GND_PIN) "VSS"
set ::env(STD_CELL_POWER_PINS) "VDD"
set ::env(STD_CELL_GROUND_PINS) "VSS"

if { ![info exist ::env(STD_CELL_LIBRARY)] } {
    set ::env(STD_CELL_LIBRARY) gf180mcu_fd_sc_mcu7t5v0
}
if { ![info exist ::env(STD_CELL_LIBRARY_OPT)] } {
    set ::env(STD_CELL_LIBRARY_OPT) gf180mcu_osu_sc_gp9t3v3
}

# Lib Files
set ::env(LIB_SYNTH) "$::env(PDK_ROOT)/$::env(PDK)/libs.ref/$::env(STD_CELL_LIBRARY)/liberty/$::env(STD_CELL_LIBRARY)_TT_25C.nldm.lib"
set ::env(LIB_FASTEST) "$::env(PDK_ROOT)/$::env(PDK)/libs.ref/$::env(STD_CELL_LIBRARY)/liberty/$::env(STD_CELL_LIBRARY)_TT_25C.nldm.lib"
set ::env(LIB_SLOWEST) "$::env(PDK_ROOT)/$::env(PDK)/libs.ref/$::env(STD_CELL_LIBRARY)/liberty/$::env(STD_CELL_LIBRARY)_TT_25C.nldm.lib"
# set ::env(LIB_FASTEST) "$::env(PDK_ROOT)/$::env(PDK)/libs.ref/$::env(STD_CELL_LIBRARY)/liberty/$::env(STD_CELL_LIBRARY)__ff_n40C_5v50.lib"
# set ::env(LIB_SLOWEST) "$::env(PDK_ROOT)/$::env(PDK)/libs.ref/$::env(STD_CELL_LIBRARY)/liberty/$::env(STD_CELL_LIBRARY)__ss_125C_4v50.lib"

set ::env(LIB_TYPICAL) $::env(LIB_SYNTH)

# Technology LEF
set ::env(TECH_LEF)  [glob "$::env(PDK_ROOT)/$::env(PDK)/libs.ref/$::env(STD_CELL_LIBRARY)/techlef/*.tlef"]
set ::env(CELLS_LEF) [glob "$::env(PDK_ROOT)/$::env(PDK)/libs.ref/$::env(STD_CELL_LIBRARY)/lef/*.lef"]
set ::env(GDS_FILES) [glob "$::env(PDK_ROOT)/$::env(PDK)/libs.ref/$::env(STD_CELL_LIBRARY)/gds/*.gds"]
set ::env(STD_CELL_LIBRARY_CDL)	"$::env(PDK_ROOT)/$::env(PDK)/libs.ref/$::env(STD_CELL_LIBRARY)/cdl/$::env(STD_CELL_LIBRARY).cdl"
set ::env(GPIO_PADS_LEF) "\
    $::env(PDK_ROOT)/$::env(PDK)/libs.ref/gf180mcu_io/lef/GF018green_ipio_5p0c_75_5lm.lef
"
set ::env(GPIO_PADS_VERILOG) "\
    $::env(PDK_ROOT)/$::env(PDK)/libs.ref/gf180mcu_io/verilog/GF018green_ipio_5p0c_75_5lm.v
"


# Latch mapping
set ::env(SYNTH_LATCH_MAP) "$::env(PDK_ROOT)/$::env(PDK)/libs.tech/openlane/$::env(STD_CELL_LIBRARY)/latch_map.v"

# Tri-state buffer mapping
set ::env(TRISTATE_BUFFER_MAP) "$::env(PDK_ROOT)/$::env(PDK)/libs.tech/openlane/$::env(STD_CELL_LIBRARY)/tribuff_map.v"

# Full adder mapping
set ::env(FULL_ADDER_MAP) "$::env(PDK_ROOT)/$::env(PDK)/libs.tech/openlane/$::env(STD_CELL_LIBRARY)/fa_map.v"

# Ripple carry adder mapping
set ::env(RIPPLE_CARRY_ADDER_MAP) "$::env(PDK_ROOT)/$::env(PDK)/libs.tech/openlane/$::env(STD_CELL_LIBRARY)/rca_map.v"

# Carry select adder mapping
set ::env(CARRY_SELECT_ADDER_MAP) "$::env(PDK_ROOT)/$::env(PDK)/libs.tech/openlane/$::env(STD_CELL_LIBRARY)/csa_map.v"

# Default No Synth List
set ::env(NO_SYNTH_CELL_LIST) "$::env(PDK_ROOT)/$::env(PDK)/libs.tech/openlane/$::env(STD_CELL_LIBRARY)/no_synth.cells"

# Default DRC Exclude List
set ::env(DRC_EXCLUDE_CELL_LIST) "$::env(PDK_ROOT)/$::env(PDK)/libs.tech/openlane/$::env(STD_CELL_LIBRARY)/drc_exclude.cells"

# DRC Exclude List for Optimization library
set ::env(DRC_EXCLUDE_CELL_LIST_OPT) "$::env(PDK_ROOT)/$::env(PDK)/libs.tech/openlane/$::env(STD_CELL_LIBRARY_OPT)/drc_exclude.cells"

# Open-RCX Rules File
set ::env(RCX_RULES) "$::env(PDK_ROOT)/$::env(PDK)/libs.tech/openlane/rcx_rules.info"

# Floorplanning
## Layer Info
set ::env(FP_IO_HLAYER) "MET3"
set ::env(FP_IO_VLAYER) "MET2"
set ::env(FP_PDN_RAILS_LAYER) "MET1"
set ::env(FP_PDN_LOWER_LAYER) "MET4"
set ::env(FP_PDN_UPPER_LAYER) "MET5"
set ::env(MACRO_BLOCKAGES_LAYER) "MET1 MET2 MET3 MET4 MET5"
set ::env(WIRE_RC_LAYER) "MET2"
set ::env(DATA_WIRE_RC_LAYER) "MET2"
set ::env(CLOCK_WIRE_RC_LAYER) "MET4"

## Tap Cell Dist
set ::env(FP_TAPCELL_DIST) 20

## Extra PDN configs
set ::env(FP_PDN_HWIDTH) 0


## via resistance are missing from the tlef causing irdrop to fai
set ::env(RUN_IRDROP_REPORT) 0

set ::env(FP_PDN_RAIL_OFFSET) 0
set ::env(FP_PDN_VWIDTH) 1.6
set ::env(FP_PDN_HWIDTH) 0.0
set ::env(FP_PDN_VSPACING) 1.7
set ::env(FP_PDN_HSPACING) 1.7

## Core Ring PDN defaults
set ::env(FP_PDN_CORE_RING_VWIDTH) 1.6
set ::env(FP_PDN_CORE_RING_HWIDTH) 0.0
set ::env(FP_PDN_CORE_RING_VSPACING) 1.7
set ::env(FP_PDN_CORE_RING_HSPACING) 1.7
set ::env(FP_PDN_CORE_RING_VOFFSET) 6
set ::env(FP_PDN_CORE_RING_HOFFSET) 6

# Timing
set ::env(RCX_RULES) "$::env(PDK_ROOT)/$::env(PDK)/libs.tech/openlane/rules.openrcx.$::env(PDK).nom"
set ::env(RCX_RULES_MIN) "$::env(PDK_ROOT)/$::env(PDK)/libs.tech/openlane/rules.openrcx.$::env(PDK).min"
set ::env(RCX_RULES_MAX) "$::env(PDK_ROOT)/$::env(PDK)/libs.tech/openlane/rules.openrcx.$::env(PDK).max"

# Routing
set ::env(METAL_LAYER_NAMES) "MET1 MET2 MET3 MET4 MET5"
set ::env(RT_MIN_LAYER) "MET2"
set ::env(RT_MAX_LAYER) "MET5"
set ::env(DRT_MIN_LAYER) "MET1"
set ::env(GRT_LAYER_ADJUSTMENTS) "0,0,0,0,0"

## Tracks info
set ::env(TRACKS_INFO_FILE) "$::env(PDK_ROOT)/$::env(PDK)/libs.tech/openlane/$::env(STD_CELL_LIBRARY)/tracks.info"

# Signoff
## Magic
set ::env(MAGIC_MAGICRC) "$::env(PDK_ROOT)/$::env(PDK)/libs.tech/magic/$::env(PDK).magicrc"
set ::env(MAGIC_TECH_FILE) "$::env(PDK_ROOT)/$::env(PDK)/libs.tech/magic/$::env(PDK).tech"

## Klayout
set ::env(RUN_KLAYOUT) {0}
set ::env(RUN_KLAYOUT_XOR) {0}
set ::env(KLAYOUT_TECH) "$::env(PDK_ROOT)/$::env(PDK)/libs.tech/klayout/$::env(PDK).lyt"
set ::env(KLAYOUT_PROPERTIES) "$::env(PDK_ROOT)/$::env(PDK)/libs.tech/klayout/$::env(PDK).lyp"
set ::env(KLAYOUT_DRC_TECH_SCRIPT) "$::env(PDK_ROOT)/$::env(PDK)/libs.tech/klayout/$::env(PDK)_mr.drc"
#set ::env(KLAYOUT_DRC_TECH) "$::env(PDK_ROOT)/$::env(PDK)/libs.tech/klayout/$::env(PDK).lydrc"

## Netgen
set ::env(NETGEN_SETUP_FILE) "$::env(PDK_ROOT)/$::env(PDK)/libs.tech/netgen/$::env(PDK)_setup.tcl"

# # Temporary Override(s) Because OpenROAD can't read techlefs properly
# # Layer RC Values
# set ::env(LAYERS_RC) "\
#     MET1 0.090000 0.0000394,\
#     MET2 0.090000 0.0000394,\
#     MET3 0.090000 0.0000394,\
#     MET4 0.090000 0.0000394,\
#     MET5 0.090000 0.0000394"

# set ::env(VIAS_RC) "\
#     Via1 4.500,\
#     Via2 4.500,\
#     Via3 4.500,\
#     Via4 4.500"
