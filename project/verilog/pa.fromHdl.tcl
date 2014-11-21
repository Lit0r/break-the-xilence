
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name xillydemo -dir "/afs/ece.cmu.edu/usr/elliotr/Private/18545/break-the-xilence/project/verilog/planAhead_run_1" -part xc7z020clg484-1
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "/afs/ece.cmu.edu/usr/elliotr/Private/18545/break-the-xilence/project/verilog/src/xillydemo.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {i3c2.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {adau1761_configuraiton_data.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {i2s_data_interface.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {i2c.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {ADAU1761_interface.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {src/xillybus_core.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {src/system.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {clocking.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {adau1761_izedboard.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {src/xillybus.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {src/fifo_8x2048.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {src/fifo_32x512.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {sawgen.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {EnvelopeGenerator.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {adau1761_test.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {src/xillydemo.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set_property top xillydemo $srcset
add_files [list {/afs/ece.cmu.edu/usr/elliotr/Private/18545/break-the-xilence/project/verilog/src/xillydemo.ucf}] -fileset [get_property constrset [current_run]]
add_files [list {../system/implementation/system_processing_system7_0_wrapper.ncf}] -fileset [get_property constrset [current_run]]
add_files [list {../system/implementation/system_axi4lite_0_wrapper.ncf}] -fileset [get_property constrset [current_run]]
add_files [list {../system/implementation/system_axi_interconnect_1_wrapper.ncf}] -fileset [get_property constrset [current_run]]
add_files [list {../system/implementation/system_axi_interconnect_0_wrapper.ncf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc7z020clg484-1
