set_property IOSTANDARD LVCMOS18 [get_ports {sw[1]}]
set_property IOSTANDARD LVCMOS18 [get_ports {sw[0]}]
set_property IOSTANDARD LVCMOS18 [get_ports AC_ADR0]
set_property IOSTANDARD LVCMOS18 [get_ports AC_ADR1]
set_property IOSTANDARD LVCMOS18 [get_ports AC_GPIO0]
set_property IOSTANDARD LVCMOS18 [get_ports AC_GPIO1]
set_property IOSTANDARD LVCMOS18 [get_ports AC_GPIO2]
set_property IOSTANDARD LVCMOS18 [get_ports AC_GPIO3]
set_property IOSTANDARD LVCMOS18 [get_ports AC_MCLK]
set_property IOSTANDARD LVCMOS18 [get_ports AC_SCK]
set_property IOSTANDARD LVCMOS18 [get_ports AC_SDA]


set_property PACKAGE_PIN G22 [get_ports {sw[1]}]
set_property PACKAGE_PIN F22 [get_ports {sw[0]}]
set_property PACKAGE_PIN AB1 [get_ports AC_ADR0]
set_property PACKAGE_PIN Y5 [get_ports AC_ADR1]
set_property PACKAGE_PIN Y8 [get_ports AC_GPIO0]
set_property PACKAGE_PIN AA7 [get_ports AC_GPIO1]
set_property PACKAGE_PIN AA6 [get_ports AC_GPIO2]
set_property PACKAGE_PIN Y6 [get_ports AC_GPIO3]
set_property PACKAGE_PIN AB2 [get_ports AC_MCLK]
set_property PACKAGE_PIN AB4 [get_ports AC_SCK]
set_property PACKAGE_PIN AB5 [get_ports AC_SDA]




set_property PACKAGE_PIN H22 [get_ports {sw[2]}]
set_property PACKAGE_PIN F21 [get_ports {sw[3]}]
set_property PACKAGE_PIN H19 [get_ports {sw[4]}]
set_property PACKAGE_PIN H18 [get_ports {sw[5]}]
set_property PACKAGE_PIN H17 [get_ports {sw[6]}]
set_property PACKAGE_PIN M15 [get_ports {sw[7]}]
set_property IOSTANDARD LVCMOS18 [get_ports {sw[7]}]
set_property IOSTANDARD LVCMOS18 [get_ports {sw[6]}]
set_property IOSTANDARD LVCMOS18 [get_ports {sw[5]}]
set_property IOSTANDARD LVCMOS18 [get_ports {sw[4]}]
set_property IOSTANDARD LVCMOS18 [get_ports {sw[3]}]
set_property IOSTANDARD LVCMOS18 [get_ports {sw[2]}]
set_property PACKAGE_PIN Y9 [get_ports clk_100]
set_property IOSTANDARD LVCMOS18 [get_ports clk_100]


create_debug_core u_ila_0 ila
set_property ALL_PROBE_SAME_MU true [get_debug_cores u_ila_0]
set_property ALL_PROBE_SAME_MU_CNT 1 [get_debug_cores u_ila_0]
set_property C_ADV_TRIGGER false [get_debug_cores u_ila_0]
set_property C_DATA_DEPTH 1024 [get_debug_cores u_ila_0]
set_property C_EN_STRG_QUAL false [get_debug_cores u_ila_0]
set_property C_INPUT_PIPE_STAGES 0 [get_debug_cores u_ila_0]
set_property C_TRIGIN_EN false [get_debug_cores u_ila_0]
set_property C_TRIGOUT_EN false [get_debug_cores u_ila_0]
set_property port_width 1 [get_debug_ports u_ila_0/clk]
connect_debug_port u_ila_0/clk [get_nets [list i_clocking/clkfbout_buf]]
set_property port_width 1 [get_debug_ports u_ila_0/probe0]
connect_debug_port u_ila_0/probe0 [get_nets [list i_clocking/clkfbout]]
create_debug_core u_ila_1 ila
set_property ALL_PROBE_SAME_MU true [get_debug_cores u_ila_1]
set_property ALL_PROBE_SAME_MU_CNT 1 [get_debug_cores u_ila_1]
set_property C_ADV_TRIGGER false [get_debug_cores u_ila_1]
set_property C_DATA_DEPTH 1024 [get_debug_cores u_ila_1]
set_property C_EN_STRG_QUAL false [get_debug_cores u_ila_1]
set_property C_INPUT_PIPE_STAGES 0 [get_debug_cores u_ila_1]
set_property C_TRIGIN_EN false [get_debug_cores u_ila_1]
set_property C_TRIGOUT_EN false [get_debug_cores u_ila_1]
set_property port_width 1 [get_debug_ports u_ila_1/clk]
connect_debug_port u_ila_1/clk [get_nets [list CLK_48]]
set_property port_width 1 [get_debug_ports u_ila_1/probe0]
connect_debug_port u_ila_1/probe0 [get_nets [list {Inst_adau1761_izedboard/Inst_i2s_data_interface/n_0_bclk_delay_reg[0]}]]
create_debug_port u_ila_0 probe
set_property port_width 1 [get_debug_ports u_ila_0/probe1]
connect_debug_port u_ila_0/probe1 [get_nets [list i_clocking/clkin1]]
create_debug_port u_ila_0 probe
set_property port_width 1 [get_debug_ports u_ila_0/probe2]
connect_debug_port u_ila_0/probe2 [get_nets [list i_clocking/clkout0]]
create_debug_port u_ila_1 probe
set_property port_width 1 [get_debug_ports u_ila_1/probe1]
connect_debug_port u_ila_1/probe1 [get_nets [list {Inst_adau1761_izedboard/Inst_i2s_data_interface/n_0_bclk_delay_reg[1]__0}]]
create_debug_port u_ila_1 probe
set_property port_width 1 [get_debug_ports u_ila_1/probe2]
connect_debug_port u_ila_1/probe2 [get_nets [list {Inst_adau1761_izedboard/Inst_i2s_data_interface/n_0_bclk_delay_reg[2]_srl5}]]
create_debug_port u_ila_1 probe
set_property port_width 1 [get_debug_ports u_ila_1/probe3]
connect_debug_port u_ila_1/probe3 [get_nets [list {Inst_adau1761_izedboard/Inst_i2s_data_interface/n_0_bclk_delay_reg[9]}]]
create_debug_port u_ila_1 probe
set_property port_width 1 [get_debug_ports u_ila_1/probe4]
connect_debug_port u_ila_1/probe4 [get_nets [list {Inst_adau1761_izedboard/Inst_i2c/Inst_i3c2/n_0_bitcount[0]_i_1}]]
create_debug_port u_ila_1 probe
set_property port_width 1 [get_debug_ports u_ila_1/probe5]
connect_debug_port u_ila_1/probe5 [get_nets [list {Inst_adau1761_izedboard/Inst_i2c/Inst_i3c2/n_0_bitcount[1]_i_1}]]
create_debug_port u_ila_1 probe
set_property port_width 1 [get_debug_ports u_ila_1/probe6]
connect_debug_port u_ila_1/probe6 [get_nets [list {Inst_adau1761_izedboard/Inst_i2c/Inst_i3c2/n_0_bitcount[2]_i_1}]]
create_debug_port u_ila_1 probe
set_property port_width 1 [get_debug_ports u_ila_1/probe7]
connect_debug_port u_ila_1/probe7 [get_nets [list {Inst_adau1761_izedboard/Inst_i2c/Inst_i3c2/n_0_bitcount[2]_i_2}]]
create_debug_port u_ila_1 probe
set_property port_width 1 [get_debug_ports u_ila_1/probe8]
connect_debug_port u_ila_1/probe8 [get_nets [list {Inst_adau1761_izedboard/Inst_i2c/Inst_i3c2/n_0_bitcount[3]_i_1}]]
create_debug_port u_ila_1 probe
set_property port_width 1 [get_debug_ports u_ila_1/probe9]
connect_debug_port u_ila_1/probe9 [get_nets [list {Inst_adau1761_izedboard/Inst_i2c/Inst_i3c2/n_0_bitcount[3]_i_2}]]
create_debug_port u_ila_1 probe
set_property port_width 1 [get_debug_ports u_ila_1/probe10]
connect_debug_port u_ila_1/probe10 [get_nets [list {Inst_adau1761_izedboard/Inst_i2c/Inst_i3c2/n_0_bitcount[4]_i_1}]]
create_debug_port u_ila_1 probe
set_property port_width 1 [get_debug_ports u_ila_1/probe11]
connect_debug_port u_ila_1/probe11 [get_nets [list {Inst_adau1761_izedboard/Inst_i2c/Inst_i3c2/n_0_bitcount[5]_i_1}]]
create_debug_port u_ila_1 probe
set_property port_width 1 [get_debug_ports u_ila_1/probe12]
connect_debug_port u_ila_1/probe12 [get_nets [list {Inst_adau1761_izedboard/Inst_i2c/Inst_i3c2/n_0_bitcount[5]_i_2}]]
create_debug_port u_ila_1 probe
set_property port_width 1 [get_debug_ports u_ila_1/probe13]
connect_debug_port u_ila_1/probe13 [get_nets [list {Inst_adau1761_izedboard/Inst_i2c/Inst_i3c2/n_0_bitcount[6]_i_1}]]
create_debug_port u_ila_1 probe
set_property port_width 1 [get_debug_ports u_ila_1/probe14]
connect_debug_port u_ila_1/probe14 [get_nets [list {Inst_adau1761_izedboard/Inst_i2c/Inst_i3c2/n_0_bitcount[6]_i_2}]]
create_debug_port u_ila_1 probe
set_property port_width 1 [get_debug_ports u_ila_1/probe15]
connect_debug_port u_ila_1/probe15 [get_nets [list {Inst_adau1761_izedboard/Inst_i2c/Inst_i3c2/n_0_bitcount[7]_i_1}]]
create_debug_port u_ila_1 probe
set_property port_width 1 [get_debug_ports u_ila_1/probe16]
connect_debug_port u_ila_1/probe16 [get_nets [list {Inst_adau1761_izedboard/Inst_i2c/Inst_i3c2/n_0_bitcount[7]_i_2}]]
create_debug_port u_ila_1 probe
set_property port_width 1 [get_debug_ports u_ila_1/probe17]
connect_debug_port u_ila_1/probe17 [get_nets [list {Inst_adau1761_izedboard/Inst_i2c/Inst_i3c2/n_0_bitcount[7]_i_4}]]
create_debug_port u_ila_1 probe
set_property port_width 1 [get_debug_ports u_ila_1/probe18]
connect_debug_port u_ila_1/probe18 [get_nets [list {Inst_adau1761_izedboard/Inst_i2c/Inst_i3c2/n_0_bitcount[7]_i_5}]]
create_debug_port u_ila_1 probe
set_property port_width 1 [get_debug_ports u_ila_1/probe19]
connect_debug_port u_ila_1/probe19 [get_nets [list Inst_adau1761_izedboard/i_ADAU1761_interface/n_0_master_clk_i_1]]
set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets u_ila_0_0_clkfbout_buf]
