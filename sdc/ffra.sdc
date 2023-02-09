###############################################################################
# Created by write_sdc
# Thu Feb  9 02:47:48 2023
###############################################################################
current_design ffra
###############################################################################
# Timing Constraints
###############################################################################
create_clock -name wb_clk_i -period 24.0000 
set_clock_uncertainty 0.2500 wb_clk_i
set_input_delay 4.8000 -clock [get_clocks {wb_clk_i}] -add_delay [get_ports {a[0]}]
set_input_delay 4.8000 -clock [get_clocks {wb_clk_i}] -add_delay [get_ports {a[1]}]
set_input_delay 4.8000 -clock [get_clocks {wb_clk_i}] -add_delay [get_ports {a[2]}]
set_input_delay 4.8000 -clock [get_clocks {wb_clk_i}] -add_delay [get_ports {a[3]}]
set_input_delay 4.8000 -clock [get_clocks {wb_clk_i}] -add_delay [get_ports {b[0]}]
set_input_delay 4.8000 -clock [get_clocks {wb_clk_i}] -add_delay [get_ports {b[1]}]
set_input_delay 4.8000 -clock [get_clocks {wb_clk_i}] -add_delay [get_ports {b[2]}]
set_input_delay 4.8000 -clock [get_clocks {wb_clk_i}] -add_delay [get_ports {b[3]}]
set_input_delay 4.8000 -clock [get_clocks {wb_clk_i}] -add_delay [get_ports {ci[0]}]
set_input_delay 4.8000 -clock [get_clocks {wb_clk_i}] -add_delay [get_ports {ci[1]}]
set_input_delay 4.8000 -clock [get_clocks {wb_clk_i}] -add_delay [get_ports {ci[2]}]
set_input_delay 4.8000 -clock [get_clocks {wb_clk_i}] -add_delay [get_ports {ci[3]}]
set_input_delay 4.8000 -clock [get_clocks {wb_clk_i}] -add_delay [get_ports {ci[4]}]
set_input_delay 4.8000 -clock [get_clocks {wb_clk_i}] -add_delay [get_ports {ci[5]}]
set_input_delay 4.8000 -clock [get_clocks {wb_clk_i}] -add_delay [get_ports {ci[6]}]
set_input_delay 4.8000 -clock [get_clocks {wb_clk_i}] -add_delay [get_ports {ci[7]}]
set_input_delay 4.8000 -clock [get_clocks {wb_clk_i}] -add_delay [get_ports {clk}]
set_input_delay 4.8000 -clock [get_clocks {wb_clk_i}] -add_delay [get_ports {rst}]
set_output_delay 4.8000 -clock [get_clocks {wb_clk_i}] -add_delay [get_ports {o[0]}]
set_output_delay 4.8000 -clock [get_clocks {wb_clk_i}] -add_delay [get_ports {o[1]}]
set_output_delay 4.8000 -clock [get_clocks {wb_clk_i}] -add_delay [get_ports {o[2]}]
set_output_delay 4.8000 -clock [get_clocks {wb_clk_i}] -add_delay [get_ports {o[3]}]
set_output_delay 4.8000 -clock [get_clocks {wb_clk_i}] -add_delay [get_ports {o[4]}]
set_output_delay 4.8000 -clock [get_clocks {wb_clk_i}] -add_delay [get_ports {o[5]}]
set_output_delay 4.8000 -clock [get_clocks {wb_clk_i}] -add_delay [get_ports {o[6]}]
set_output_delay 4.8000 -clock [get_clocks {wb_clk_i}] -add_delay [get_ports {o[7]}]
###############################################################################
# Environment
###############################################################################
set_load -pin_load 0.0729 [get_ports {o[7]}]
set_load -pin_load 0.0729 [get_ports {o[6]}]
set_load -pin_load 0.0729 [get_ports {o[5]}]
set_load -pin_load 0.0729 [get_ports {o[4]}]
set_load -pin_load 0.0729 [get_ports {o[3]}]
set_load -pin_load 0.0729 [get_ports {o[2]}]
set_load -pin_load 0.0729 [get_ports {o[1]}]
set_load -pin_load 0.0729 [get_ports {o[0]}]
set_driving_cell -lib_cell gf180mcu_osu_sc_gp9t3v3__inv_1 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {clk}]
set_driving_cell -lib_cell gf180mcu_osu_sc_gp9t3v3__inv_1 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {rst}]
set_driving_cell -lib_cell gf180mcu_osu_sc_gp9t3v3__inv_1 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {a[3]}]
set_driving_cell -lib_cell gf180mcu_osu_sc_gp9t3v3__inv_1 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {a[2]}]
set_driving_cell -lib_cell gf180mcu_osu_sc_gp9t3v3__inv_1 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {a[1]}]
set_driving_cell -lib_cell gf180mcu_osu_sc_gp9t3v3__inv_1 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {a[0]}]
set_driving_cell -lib_cell gf180mcu_osu_sc_gp9t3v3__inv_1 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {b[3]}]
set_driving_cell -lib_cell gf180mcu_osu_sc_gp9t3v3__inv_1 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {b[2]}]
set_driving_cell -lib_cell gf180mcu_osu_sc_gp9t3v3__inv_1 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {b[1]}]
set_driving_cell -lib_cell gf180mcu_osu_sc_gp9t3v3__inv_1 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {b[0]}]
set_driving_cell -lib_cell gf180mcu_osu_sc_gp9t3v3__inv_1 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {ci[7]}]
set_driving_cell -lib_cell gf180mcu_osu_sc_gp9t3v3__inv_1 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {ci[6]}]
set_driving_cell -lib_cell gf180mcu_osu_sc_gp9t3v3__inv_1 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {ci[5]}]
set_driving_cell -lib_cell gf180mcu_osu_sc_gp9t3v3__inv_1 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {ci[4]}]
set_driving_cell -lib_cell gf180mcu_osu_sc_gp9t3v3__inv_1 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {ci[3]}]
set_driving_cell -lib_cell gf180mcu_osu_sc_gp9t3v3__inv_1 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {ci[2]}]
set_driving_cell -lib_cell gf180mcu_osu_sc_gp9t3v3__inv_1 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {ci[1]}]
set_driving_cell -lib_cell gf180mcu_osu_sc_gp9t3v3__inv_1 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {ci[0]}]
set_timing_derate -early 0.9500
set_timing_derate -late 1.0500
###############################################################################
# Design Rules
###############################################################################
set_max_fanout 4.0000 [current_design]
