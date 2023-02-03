###############################################################################
# Created by write_sdc
# Thu Feb  2 05:04:16 2023
###############################################################################
current_design adder
###############################################################################
# Timing Constraints
###############################################################################
create_clock -name wb_clk_i -period 24.0000 
set_clock_uncertainty 0.2500 wb_clk_i
set_input_delay 4.8000 -clock [get_clocks {wb_clk_i}] -add_delay [get_ports {a_in[0]}]
set_input_delay 4.8000 -clock [get_clocks {wb_clk_i}] -add_delay [get_ports {a_in[1]}]
set_input_delay 4.8000 -clock [get_clocks {wb_clk_i}] -add_delay [get_ports {a_in[2]}]
set_input_delay 4.8000 -clock [get_clocks {wb_clk_i}] -add_delay [get_ports {a_in[3]}]
set_input_delay 4.8000 -clock [get_clocks {wb_clk_i}] -add_delay [get_ports {a_in[4]}]
set_input_delay 4.8000 -clock [get_clocks {wb_clk_i}] -add_delay [get_ports {a_in[5]}]
set_input_delay 4.8000 -clock [get_clocks {wb_clk_i}] -add_delay [get_ports {a_in[6]}]
set_input_delay 4.8000 -clock [get_clocks {wb_clk_i}] -add_delay [get_ports {a_in[7]}]
set_input_delay 4.8000 -clock [get_clocks {wb_clk_i}] -add_delay [get_ports {b_in[0]}]
set_input_delay 4.8000 -clock [get_clocks {wb_clk_i}] -add_delay [get_ports {b_in[1]}]
set_input_delay 4.8000 -clock [get_clocks {wb_clk_i}] -add_delay [get_ports {b_in[2]}]
set_input_delay 4.8000 -clock [get_clocks {wb_clk_i}] -add_delay [get_ports {b_in[3]}]
set_input_delay 4.8000 -clock [get_clocks {wb_clk_i}] -add_delay [get_ports {b_in[4]}]
set_input_delay 4.8000 -clock [get_clocks {wb_clk_i}] -add_delay [get_ports {b_in[5]}]
set_input_delay 4.8000 -clock [get_clocks {wb_clk_i}] -add_delay [get_ports {b_in[6]}]
set_input_delay 4.8000 -clock [get_clocks {wb_clk_i}] -add_delay [get_ports {b_in[7]}]
set_output_delay 4.8000 -clock [get_clocks {wb_clk_i}] -add_delay [get_ports {sum[0]}]
set_output_delay 4.8000 -clock [get_clocks {wb_clk_i}] -add_delay [get_ports {sum[1]}]
set_output_delay 4.8000 -clock [get_clocks {wb_clk_i}] -add_delay [get_ports {sum[2]}]
set_output_delay 4.8000 -clock [get_clocks {wb_clk_i}] -add_delay [get_ports {sum[3]}]
set_output_delay 4.8000 -clock [get_clocks {wb_clk_i}] -add_delay [get_ports {sum[4]}]
set_output_delay 4.8000 -clock [get_clocks {wb_clk_i}] -add_delay [get_ports {sum[5]}]
set_output_delay 4.8000 -clock [get_clocks {wb_clk_i}] -add_delay [get_ports {sum[6]}]
set_output_delay 4.8000 -clock [get_clocks {wb_clk_i}] -add_delay [get_ports {sum[7]}]
###############################################################################
# Environment
###############################################################################
set_load -pin_load 0.0729 [get_ports {sum[7]}]
set_load -pin_load 0.0729 [get_ports {sum[6]}]
set_load -pin_load 0.0729 [get_ports {sum[5]}]
set_load -pin_load 0.0729 [get_ports {sum[4]}]
set_load -pin_load 0.0729 [get_ports {sum[3]}]
set_load -pin_load 0.0729 [get_ports {sum[2]}]
set_load -pin_load 0.0729 [get_ports {sum[1]}]
set_load -pin_load 0.0729 [get_ports {sum[0]}]
set_driving_cell -lib_cell gf180mcu_osu_sc_gp9t3v3__inv_1 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {a_in[7]}]
set_driving_cell -lib_cell gf180mcu_osu_sc_gp9t3v3__inv_1 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {a_in[6]}]
set_driving_cell -lib_cell gf180mcu_osu_sc_gp9t3v3__inv_1 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {a_in[5]}]
set_driving_cell -lib_cell gf180mcu_osu_sc_gp9t3v3__inv_1 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {a_in[4]}]
set_driving_cell -lib_cell gf180mcu_osu_sc_gp9t3v3__inv_1 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {a_in[3]}]
set_driving_cell -lib_cell gf180mcu_osu_sc_gp9t3v3__inv_1 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {a_in[2]}]
set_driving_cell -lib_cell gf180mcu_osu_sc_gp9t3v3__inv_1 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {a_in[1]}]
set_driving_cell -lib_cell gf180mcu_osu_sc_gp9t3v3__inv_1 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {a_in[0]}]
set_driving_cell -lib_cell gf180mcu_osu_sc_gp9t3v3__inv_1 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {b_in[7]}]
set_driving_cell -lib_cell gf180mcu_osu_sc_gp9t3v3__inv_1 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {b_in[6]}]
set_driving_cell -lib_cell gf180mcu_osu_sc_gp9t3v3__inv_1 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {b_in[5]}]
set_driving_cell -lib_cell gf180mcu_osu_sc_gp9t3v3__inv_1 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {b_in[4]}]
set_driving_cell -lib_cell gf180mcu_osu_sc_gp9t3v3__inv_1 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {b_in[3]}]
set_driving_cell -lib_cell gf180mcu_osu_sc_gp9t3v3__inv_1 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {b_in[2]}]
set_driving_cell -lib_cell gf180mcu_osu_sc_gp9t3v3__inv_1 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {b_in[1]}]
set_driving_cell -lib_cell gf180mcu_osu_sc_gp9t3v3__inv_1 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {b_in[0]}]
set_timing_derate -early 0.9500
set_timing_derate -late 1.0500
###############################################################################
# Design Rules
###############################################################################
set_max_fanout 4.0000 [current_design]
