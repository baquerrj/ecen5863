// nios_setup_v2.v

// Generated using ACDS version 16.1 196

`timescale 1 ps / 1 ps
module nios_setup_v2 (
		input  wire       clk_clk,                           //                        clk.clk
		output wire [1:0] led_external_connection_export,    //    led_external_connection.export
		input  wire       reset_reset_n,                     //                      reset.reset_n
		input  wire [1:0] switch_external_connection_export  // switch_external_connection.export
	);

	wire  [31:0] nios2e_data_master_readdata;                          // mm_interconnect_0:nios2e_data_master_readdata -> nios2e:d_readdata
	wire         nios2e_data_master_waitrequest;                       // mm_interconnect_0:nios2e_data_master_waitrequest -> nios2e:d_waitrequest
	wire         nios2e_data_master_debugaccess;                       // nios2e:debug_mem_slave_debugaccess_to_roms -> mm_interconnect_0:nios2e_data_master_debugaccess
	wire  [15:0] nios2e_data_master_address;                           // nios2e:d_address -> mm_interconnect_0:nios2e_data_master_address
	wire   [3:0] nios2e_data_master_byteenable;                        // nios2e:d_byteenable -> mm_interconnect_0:nios2e_data_master_byteenable
	wire         nios2e_data_master_read;                              // nios2e:d_read -> mm_interconnect_0:nios2e_data_master_read
	wire         nios2e_data_master_write;                             // nios2e:d_write -> mm_interconnect_0:nios2e_data_master_write
	wire  [31:0] nios2e_data_master_writedata;                         // nios2e:d_writedata -> mm_interconnect_0:nios2e_data_master_writedata
	wire  [31:0] nios2e_instruction_master_readdata;                   // mm_interconnect_0:nios2e_instruction_master_readdata -> nios2e:i_readdata
	wire         nios2e_instruction_master_waitrequest;                // mm_interconnect_0:nios2e_instruction_master_waitrequest -> nios2e:i_waitrequest
	wire  [15:0] nios2e_instruction_master_address;                    // nios2e:i_address -> mm_interconnect_0:nios2e_instruction_master_address
	wire         nios2e_instruction_master_read;                       // nios2e:i_read -> mm_interconnect_0:nios2e_instruction_master_read
	wire         mm_interconnect_0_uart_avalon_jtag_slave_chipselect;  // mm_interconnect_0:uart_avalon_jtag_slave_chipselect -> uart:av_chipselect
	wire  [31:0] mm_interconnect_0_uart_avalon_jtag_slave_readdata;    // uart:av_readdata -> mm_interconnect_0:uart_avalon_jtag_slave_readdata
	wire         mm_interconnect_0_uart_avalon_jtag_slave_waitrequest; // uart:av_waitrequest -> mm_interconnect_0:uart_avalon_jtag_slave_waitrequest
	wire   [0:0] mm_interconnect_0_uart_avalon_jtag_slave_address;     // mm_interconnect_0:uart_avalon_jtag_slave_address -> uart:av_address
	wire         mm_interconnect_0_uart_avalon_jtag_slave_read;        // mm_interconnect_0:uart_avalon_jtag_slave_read -> uart:av_read_n
	wire         mm_interconnect_0_uart_avalon_jtag_slave_write;       // mm_interconnect_0:uart_avalon_jtag_slave_write -> uart:av_write_n
	wire  [31:0] mm_interconnect_0_uart_avalon_jtag_slave_writedata;   // mm_interconnect_0:uart_avalon_jtag_slave_writedata -> uart:av_writedata
	wire  [31:0] mm_interconnect_0_nios2e_debug_mem_slave_readdata;    // nios2e:debug_mem_slave_readdata -> mm_interconnect_0:nios2e_debug_mem_slave_readdata
	wire         mm_interconnect_0_nios2e_debug_mem_slave_waitrequest; // nios2e:debug_mem_slave_waitrequest -> mm_interconnect_0:nios2e_debug_mem_slave_waitrequest
	wire         mm_interconnect_0_nios2e_debug_mem_slave_debugaccess; // mm_interconnect_0:nios2e_debug_mem_slave_debugaccess -> nios2e:debug_mem_slave_debugaccess
	wire   [8:0] mm_interconnect_0_nios2e_debug_mem_slave_address;     // mm_interconnect_0:nios2e_debug_mem_slave_address -> nios2e:debug_mem_slave_address
	wire         mm_interconnect_0_nios2e_debug_mem_slave_read;        // mm_interconnect_0:nios2e_debug_mem_slave_read -> nios2e:debug_mem_slave_read
	wire   [3:0] mm_interconnect_0_nios2e_debug_mem_slave_byteenable;  // mm_interconnect_0:nios2e_debug_mem_slave_byteenable -> nios2e:debug_mem_slave_byteenable
	wire         mm_interconnect_0_nios2e_debug_mem_slave_write;       // mm_interconnect_0:nios2e_debug_mem_slave_write -> nios2e:debug_mem_slave_write
	wire  [31:0] mm_interconnect_0_nios2e_debug_mem_slave_writedata;   // mm_interconnect_0:nios2e_debug_mem_slave_writedata -> nios2e:debug_mem_slave_writedata
	wire         mm_interconnect_0_onchip_memory_s1_chipselect;        // mm_interconnect_0:onchip_memory_s1_chipselect -> onchip_memory:chipselect
	wire  [31:0] mm_interconnect_0_onchip_memory_s1_readdata;          // onchip_memory:readdata -> mm_interconnect_0:onchip_memory_s1_readdata
	wire  [11:0] mm_interconnect_0_onchip_memory_s1_address;           // mm_interconnect_0:onchip_memory_s1_address -> onchip_memory:address
	wire   [3:0] mm_interconnect_0_onchip_memory_s1_byteenable;        // mm_interconnect_0:onchip_memory_s1_byteenable -> onchip_memory:byteenable
	wire         mm_interconnect_0_onchip_memory_s1_write;             // mm_interconnect_0:onchip_memory_s1_write -> onchip_memory:write
	wire  [31:0] mm_interconnect_0_onchip_memory_s1_writedata;         // mm_interconnect_0:onchip_memory_s1_writedata -> onchip_memory:writedata
	wire         mm_interconnect_0_onchip_memory_s1_clken;             // mm_interconnect_0:onchip_memory_s1_clken -> onchip_memory:clken
	wire  [31:0] mm_interconnect_0_switch_s1_readdata;                 // switch:readdata -> mm_interconnect_0:switch_s1_readdata
	wire   [1:0] mm_interconnect_0_switch_s1_address;                  // mm_interconnect_0:switch_s1_address -> switch:address
	wire         mm_interconnect_0_led_s1_chipselect;                  // mm_interconnect_0:led_s1_chipselect -> led:chipselect
	wire  [31:0] mm_interconnect_0_led_s1_readdata;                    // led:readdata -> mm_interconnect_0:led_s1_readdata
	wire   [1:0] mm_interconnect_0_led_s1_address;                     // mm_interconnect_0:led_s1_address -> led:address
	wire         mm_interconnect_0_led_s1_write;                       // mm_interconnect_0:led_s1_write -> led:write_n
	wire  [31:0] mm_interconnect_0_led_s1_writedata;                   // mm_interconnect_0:led_s1_writedata -> led:writedata
	wire         irq_mapper_receiver0_irq;                             // uart:av_irq -> irq_mapper:receiver0_irq
	wire  [31:0] nios2e_irq_irq;                                       // irq_mapper:sender_irq -> nios2e:irq
	wire         rst_controller_reset_out_reset;                       // rst_controller:reset_out -> [irq_mapper:reset, led:reset_n, mm_interconnect_0:nios2e_reset_reset_bridge_in_reset_reset, nios2e:reset_n, onchip_memory:reset, rst_translator:in_reset, switch:reset_n, uart:rst_n]
	wire         rst_controller_reset_out_reset_req;                   // rst_controller:reset_req -> [nios2e:reset_req, onchip_memory:reset_req, rst_translator:reset_req_in]

	nios_setup_v2_led led (
		.clk        (clk_clk),                             //                 clk.clk
		.reset_n    (~rst_controller_reset_out_reset),     //               reset.reset_n
		.address    (mm_interconnect_0_led_s1_address),    //                  s1.address
		.write_n    (~mm_interconnect_0_led_s1_write),     //                    .write_n
		.writedata  (mm_interconnect_0_led_s1_writedata),  //                    .writedata
		.chipselect (mm_interconnect_0_led_s1_chipselect), //                    .chipselect
		.readdata   (mm_interconnect_0_led_s1_readdata),   //                    .readdata
		.out_port   (led_external_connection_export)       // external_connection.export
	);

	nios_setup_v2_nios2e nios2e (
		.clk                                 (clk_clk),                                              //                       clk.clk
		.reset_n                             (~rst_controller_reset_out_reset),                      //                     reset.reset_n
		.reset_req                           (rst_controller_reset_out_reset_req),                   //                          .reset_req
		.d_address                           (nios2e_data_master_address),                           //               data_master.address
		.d_byteenable                        (nios2e_data_master_byteenable),                        //                          .byteenable
		.d_read                              (nios2e_data_master_read),                              //                          .read
		.d_readdata                          (nios2e_data_master_readdata),                          //                          .readdata
		.d_waitrequest                       (nios2e_data_master_waitrequest),                       //                          .waitrequest
		.d_write                             (nios2e_data_master_write),                             //                          .write
		.d_writedata                         (nios2e_data_master_writedata),                         //                          .writedata
		.debug_mem_slave_debugaccess_to_roms (nios2e_data_master_debugaccess),                       //                          .debugaccess
		.i_address                           (nios2e_instruction_master_address),                    //        instruction_master.address
		.i_read                              (nios2e_instruction_master_read),                       //                          .read
		.i_readdata                          (nios2e_instruction_master_readdata),                   //                          .readdata
		.i_waitrequest                       (nios2e_instruction_master_waitrequest),                //                          .waitrequest
		.irq                                 (nios2e_irq_irq),                                       //                       irq.irq
		.debug_reset_request                 (),                                                     //       debug_reset_request.reset
		.debug_mem_slave_address             (mm_interconnect_0_nios2e_debug_mem_slave_address),     //           debug_mem_slave.address
		.debug_mem_slave_byteenable          (mm_interconnect_0_nios2e_debug_mem_slave_byteenable),  //                          .byteenable
		.debug_mem_slave_debugaccess         (mm_interconnect_0_nios2e_debug_mem_slave_debugaccess), //                          .debugaccess
		.debug_mem_slave_read                (mm_interconnect_0_nios2e_debug_mem_slave_read),        //                          .read
		.debug_mem_slave_readdata            (mm_interconnect_0_nios2e_debug_mem_slave_readdata),    //                          .readdata
		.debug_mem_slave_waitrequest         (mm_interconnect_0_nios2e_debug_mem_slave_waitrequest), //                          .waitrequest
		.debug_mem_slave_write               (mm_interconnect_0_nios2e_debug_mem_slave_write),       //                          .write
		.debug_mem_slave_writedata           (mm_interconnect_0_nios2e_debug_mem_slave_writedata),   //                          .writedata
		.dummy_ci_port                       ()                                                      // custom_instruction_master.readra
	);

	nios_setup_v2_onchip_memory onchip_memory (
		.clk        (clk_clk),                                       //   clk1.clk
		.address    (mm_interconnect_0_onchip_memory_s1_address),    //     s1.address
		.clken      (mm_interconnect_0_onchip_memory_s1_clken),      //       .clken
		.chipselect (mm_interconnect_0_onchip_memory_s1_chipselect), //       .chipselect
		.write      (mm_interconnect_0_onchip_memory_s1_write),      //       .write
		.readdata   (mm_interconnect_0_onchip_memory_s1_readdata),   //       .readdata
		.writedata  (mm_interconnect_0_onchip_memory_s1_writedata),  //       .writedata
		.byteenable (mm_interconnect_0_onchip_memory_s1_byteenable), //       .byteenable
		.reset      (rst_controller_reset_out_reset),                // reset1.reset
		.reset_req  (rst_controller_reset_out_reset_req),            //       .reset_req
		.freeze     (1'b0)                                           // (terminated)
	);

	nios_setup_v2_switch switch (
		.clk      (clk_clk),                              //                 clk.clk
		.reset_n  (~rst_controller_reset_out_reset),      //               reset.reset_n
		.address  (mm_interconnect_0_switch_s1_address),  //                  s1.address
		.readdata (mm_interconnect_0_switch_s1_readdata), //                    .readdata
		.in_port  (switch_external_connection_export)     // external_connection.export
	);

	nios_setup_v2_uart uart (
		.clk            (clk_clk),                                              //               clk.clk
		.rst_n          (~rst_controller_reset_out_reset),                      //             reset.reset_n
		.av_chipselect  (mm_interconnect_0_uart_avalon_jtag_slave_chipselect),  // avalon_jtag_slave.chipselect
		.av_address     (mm_interconnect_0_uart_avalon_jtag_slave_address),     //                  .address
		.av_read_n      (~mm_interconnect_0_uart_avalon_jtag_slave_read),       //                  .read_n
		.av_readdata    (mm_interconnect_0_uart_avalon_jtag_slave_readdata),    //                  .readdata
		.av_write_n     (~mm_interconnect_0_uart_avalon_jtag_slave_write),      //                  .write_n
		.av_writedata   (mm_interconnect_0_uart_avalon_jtag_slave_writedata),   //                  .writedata
		.av_waitrequest (mm_interconnect_0_uart_avalon_jtag_slave_waitrequest), //                  .waitrequest
		.av_irq         (irq_mapper_receiver0_irq)                              //               irq.irq
	);

	nios_setup_v2_mm_interconnect_0 mm_interconnect_0 (
		.clk_0_clk_clk                            (clk_clk),                                              //                          clk_0_clk.clk
		.nios2e_reset_reset_bridge_in_reset_reset (rst_controller_reset_out_reset),                       // nios2e_reset_reset_bridge_in_reset.reset
		.nios2e_data_master_address               (nios2e_data_master_address),                           //                 nios2e_data_master.address
		.nios2e_data_master_waitrequest           (nios2e_data_master_waitrequest),                       //                                   .waitrequest
		.nios2e_data_master_byteenable            (nios2e_data_master_byteenable),                        //                                   .byteenable
		.nios2e_data_master_read                  (nios2e_data_master_read),                              //                                   .read
		.nios2e_data_master_readdata              (nios2e_data_master_readdata),                          //                                   .readdata
		.nios2e_data_master_write                 (nios2e_data_master_write),                             //                                   .write
		.nios2e_data_master_writedata             (nios2e_data_master_writedata),                         //                                   .writedata
		.nios2e_data_master_debugaccess           (nios2e_data_master_debugaccess),                       //                                   .debugaccess
		.nios2e_instruction_master_address        (nios2e_instruction_master_address),                    //          nios2e_instruction_master.address
		.nios2e_instruction_master_waitrequest    (nios2e_instruction_master_waitrequest),                //                                   .waitrequest
		.nios2e_instruction_master_read           (nios2e_instruction_master_read),                       //                                   .read
		.nios2e_instruction_master_readdata       (nios2e_instruction_master_readdata),                   //                                   .readdata
		.led_s1_address                           (mm_interconnect_0_led_s1_address),                     //                             led_s1.address
		.led_s1_write                             (mm_interconnect_0_led_s1_write),                       //                                   .write
		.led_s1_readdata                          (mm_interconnect_0_led_s1_readdata),                    //                                   .readdata
		.led_s1_writedata                         (mm_interconnect_0_led_s1_writedata),                   //                                   .writedata
		.led_s1_chipselect                        (mm_interconnect_0_led_s1_chipselect),                  //                                   .chipselect
		.nios2e_debug_mem_slave_address           (mm_interconnect_0_nios2e_debug_mem_slave_address),     //             nios2e_debug_mem_slave.address
		.nios2e_debug_mem_slave_write             (mm_interconnect_0_nios2e_debug_mem_slave_write),       //                                   .write
		.nios2e_debug_mem_slave_read              (mm_interconnect_0_nios2e_debug_mem_slave_read),        //                                   .read
		.nios2e_debug_mem_slave_readdata          (mm_interconnect_0_nios2e_debug_mem_slave_readdata),    //                                   .readdata
		.nios2e_debug_mem_slave_writedata         (mm_interconnect_0_nios2e_debug_mem_slave_writedata),   //                                   .writedata
		.nios2e_debug_mem_slave_byteenable        (mm_interconnect_0_nios2e_debug_mem_slave_byteenable),  //                                   .byteenable
		.nios2e_debug_mem_slave_waitrequest       (mm_interconnect_0_nios2e_debug_mem_slave_waitrequest), //                                   .waitrequest
		.nios2e_debug_mem_slave_debugaccess       (mm_interconnect_0_nios2e_debug_mem_slave_debugaccess), //                                   .debugaccess
		.onchip_memory_s1_address                 (mm_interconnect_0_onchip_memory_s1_address),           //                   onchip_memory_s1.address
		.onchip_memory_s1_write                   (mm_interconnect_0_onchip_memory_s1_write),             //                                   .write
		.onchip_memory_s1_readdata                (mm_interconnect_0_onchip_memory_s1_readdata),          //                                   .readdata
		.onchip_memory_s1_writedata               (mm_interconnect_0_onchip_memory_s1_writedata),         //                                   .writedata
		.onchip_memory_s1_byteenable              (mm_interconnect_0_onchip_memory_s1_byteenable),        //                                   .byteenable
		.onchip_memory_s1_chipselect              (mm_interconnect_0_onchip_memory_s1_chipselect),        //                                   .chipselect
		.onchip_memory_s1_clken                   (mm_interconnect_0_onchip_memory_s1_clken),             //                                   .clken
		.switch_s1_address                        (mm_interconnect_0_switch_s1_address),                  //                          switch_s1.address
		.switch_s1_readdata                       (mm_interconnect_0_switch_s1_readdata),                 //                                   .readdata
		.uart_avalon_jtag_slave_address           (mm_interconnect_0_uart_avalon_jtag_slave_address),     //             uart_avalon_jtag_slave.address
		.uart_avalon_jtag_slave_write             (mm_interconnect_0_uart_avalon_jtag_slave_write),       //                                   .write
		.uart_avalon_jtag_slave_read              (mm_interconnect_0_uart_avalon_jtag_slave_read),        //                                   .read
		.uart_avalon_jtag_slave_readdata          (mm_interconnect_0_uart_avalon_jtag_slave_readdata),    //                                   .readdata
		.uart_avalon_jtag_slave_writedata         (mm_interconnect_0_uart_avalon_jtag_slave_writedata),   //                                   .writedata
		.uart_avalon_jtag_slave_waitrequest       (mm_interconnect_0_uart_avalon_jtag_slave_waitrequest), //                                   .waitrequest
		.uart_avalon_jtag_slave_chipselect        (mm_interconnect_0_uart_avalon_jtag_slave_chipselect)   //                                   .chipselect
	);

	nios_setup_v2_irq_mapper irq_mapper (
		.clk           (clk_clk),                        //       clk.clk
		.reset         (rst_controller_reset_out_reset), // clk_reset.reset
		.receiver0_irq (irq_mapper_receiver0_irq),       // receiver0.irq
		.sender_irq    (nios2e_irq_irq)                  //    sender.irq
	);

	altera_reset_controller #(
		.NUM_RESET_INPUTS          (1),
		.OUTPUT_RESET_SYNC_EDGES   ("deassert"),
		.SYNC_DEPTH                (2),
		.RESET_REQUEST_PRESENT     (1),
		.RESET_REQ_WAIT_TIME       (1),
		.MIN_RST_ASSERTION_TIME    (3),
		.RESET_REQ_EARLY_DSRT_TIME (1),
		.USE_RESET_REQUEST_IN0     (0),
		.USE_RESET_REQUEST_IN1     (0),
		.USE_RESET_REQUEST_IN2     (0),
		.USE_RESET_REQUEST_IN3     (0),
		.USE_RESET_REQUEST_IN4     (0),
		.USE_RESET_REQUEST_IN5     (0),
		.USE_RESET_REQUEST_IN6     (0),
		.USE_RESET_REQUEST_IN7     (0),
		.USE_RESET_REQUEST_IN8     (0),
		.USE_RESET_REQUEST_IN9     (0),
		.USE_RESET_REQUEST_IN10    (0),
		.USE_RESET_REQUEST_IN11    (0),
		.USE_RESET_REQUEST_IN12    (0),
		.USE_RESET_REQUEST_IN13    (0),
		.USE_RESET_REQUEST_IN14    (0),
		.USE_RESET_REQUEST_IN15    (0),
		.ADAPT_RESET_REQUEST       (0)
	) rst_controller (
		.reset_in0      (~reset_reset_n),                     // reset_in0.reset
		.clk            (clk_clk),                            //       clk.clk
		.reset_out      (rst_controller_reset_out_reset),     // reset_out.reset
		.reset_req      (rst_controller_reset_out_reset_req), //          .reset_req
		.reset_req_in0  (1'b0),                               // (terminated)
		.reset_in1      (1'b0),                               // (terminated)
		.reset_req_in1  (1'b0),                               // (terminated)
		.reset_in2      (1'b0),                               // (terminated)
		.reset_req_in2  (1'b0),                               // (terminated)
		.reset_in3      (1'b0),                               // (terminated)
		.reset_req_in3  (1'b0),                               // (terminated)
		.reset_in4      (1'b0),                               // (terminated)
		.reset_req_in4  (1'b0),                               // (terminated)
		.reset_in5      (1'b0),                               // (terminated)
		.reset_req_in5  (1'b0),                               // (terminated)
		.reset_in6      (1'b0),                               // (terminated)
		.reset_req_in6  (1'b0),                               // (terminated)
		.reset_in7      (1'b0),                               // (terminated)
		.reset_req_in7  (1'b0),                               // (terminated)
		.reset_in8      (1'b0),                               // (terminated)
		.reset_req_in8  (1'b0),                               // (terminated)
		.reset_in9      (1'b0),                               // (terminated)
		.reset_req_in9  (1'b0),                               // (terminated)
		.reset_in10     (1'b0),                               // (terminated)
		.reset_req_in10 (1'b0),                               // (terminated)
		.reset_in11     (1'b0),                               // (terminated)
		.reset_req_in11 (1'b0),                               // (terminated)
		.reset_in12     (1'b0),                               // (terminated)
		.reset_req_in12 (1'b0),                               // (terminated)
		.reset_in13     (1'b0),                               // (terminated)
		.reset_req_in13 (1'b0),                               // (terminated)
		.reset_in14     (1'b0),                               // (terminated)
		.reset_req_in14 (1'b0),                               // (terminated)
		.reset_in15     (1'b0),                               // (terminated)
		.reset_req_in15 (1'b0)                                // (terminated)
	);

endmodule
