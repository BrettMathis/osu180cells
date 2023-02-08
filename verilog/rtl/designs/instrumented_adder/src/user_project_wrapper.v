// SPDX-FileCopyrightText: 2020 Efabless Corporation
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
// SPDX-License-Identifier: Apache-2.0

`default_nettype none
/*
 *-------------------------------------------------------------
 *
 * user_project_wrapper
 *
 * This wrapper enumerates all of the pins available to the
 * user for the user project.
 *
 * An example user project is provided in this wrapper.  The
 * example should be removed and replaced with the actual
 * user project.
 *
 *-------------------------------------------------------------
 */

module user_project_wrapper #(
    parameter WIDTH = 4
)(
    `ifdef USE_POWER_PINS
        inout vdd,		// User area 5.0V supply
        inout vss,		// User area ground
    `endif

    // Wishbone Slave ports (WB MI A)
    input wb_clk_i,
    input wb_rst_i,
    input wbs_stb_i,
    input wbs_cyc_i,
    input wbs_we_i,
    input [3:0] wbs_sel_i,
    input [31:0] wbs_dat_i,
    input [31:0] wbs_adr_i,
    output wbs_ack_o,
    output [31:0] wbs_dat_o,

    // Logic Analyzer Signals
    input  [63:0] la_data_in,
    output [63:0] la_data_out,
    input  [63:0] la_oenb,

    // IOs
    input  [`MPRJ_IO_PADS-1:0] io_in,
    output [`MPRJ_IO_PADS-1:0] io_out,
    output [`MPRJ_IO_PADS-1:0] io_oeb,

    // Independent clock (on independent integer divider)
    input   user_clock2,

    // User maskable interrupt signals
    output [2:0] user_irq
);

/*--------------------------------------*/
/* User project is instantiated  here   */
/*--------------------------------------*/

/*user_proj_example mprj (
`ifdef USE_POWER_PINS
	.vdd(vdd),	// User area 1 1.8V power
	.vss(vss),	// User area 1 digital ground
`endif

    .wb_clk_i(wb_clk_i),
    .wb_rst_i(wb_rst_i),

    // MGMT SoC Wishbone Slave

    .wbs_cyc_i(wbs_cyc_i),
    .wbs_stb_i(wbs_stb_i),
    .wbs_we_i(wbs_we_i),
    .wbs_sel_i(wbs_sel_i),
    .wbs_adr_i(wbs_adr_i),
    .wbs_dat_i(wbs_dat_i),
    .wbs_ack_o(wbs_ack_o),
    .wbs_dat_o(wbs_dat_o),

    // Logic Analyzer

    .la_data_in(la_data_in),
    .la_data_out(la_data_out),
    .la_oenb (la_oenb),

    // IO Pads

    .io_in (io_in),
    .io_out(io_out),
    .io_oeb(io_oeb),

    // IRQ
    .irq(user_irq)
);
*/

instrumented_adder mprj (
    `ifdef USE_POWER_PINS
        .vdd(vdd),	
        .vss(vss),
    `endif

     .clk(wb_clk_i),
     .reset(wb_rst_i),

    // loop control
    .stop_b(io_in[0]),                      // stops the ring oscillator (inverted)
    .extra_inverter(io_in[1]),              // adds an extra inverter into the ring
    .bypass_b(io_in[2]),                    // bypass the adder (inverted)
    .control_b(io_in[3]),                   // enables an additional control loop (inverted)
    .force_count(io_in[4]),                 // force counter even without the integration counter
    .a_input_ext_bit_b(io_in[8:5]),     // which bit of the adder's a input to connect to external a_input (inverted)
    .a_input_ring_bit_b(io_in[12:9]),    // which bit of the adder's a input to connect to the ring (inverted)
    .s_output_bit_b(io_in[16:13]),        // which bit of sum to connect back to the ring (inverted)

    // counter control
    .counter_enable(io_in[17]),
    .counter_load(io_in[18]),
    .integration_time(wbs_dat_i[31:0]),
    
    // adder inputs
    .a_input(io_in[22:19]),
    .b_input(io_in[26:23]),

    // outputs
    .ring_osc_out(io_out[0]),               // used for spice sims
    .sum_out(io_out[4:1]),              // output of the adder
    .done(io_out[5]),                       // when the integration counter gets to zero
    .ring_osc_counter_out(io_out[37:6])    // number of ring cycles / 2 counted
);

endmodule	// user_project_wrapper

`default_nettype wire
