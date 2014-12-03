
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name xillydemo -dir "/afs/ece.cmu.edu/usr/elliotr/Private/18545/break-the-xilence/project/verilog/planAhead_run_2" -part xc7z020clg484-1
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "/afs/ece.cmu.edu/usr/elliotr/Private/18545/break-the-xilence/project/verilog/src/xillydemo.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {i3c2.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {adau1761_configuraiton_data.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {TWICtl.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {ipcore_dir/great_divide.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
add_files [list {ipcore_dir/great_divide.ngc}]
set hdlfile [add_files [list {ipcore_dir/fp_mult_32_logic.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
add_files [list {ipcore_dir/fp_mult_32_logic.ngc}]
set hdlfile [add_files [list {ipcore_dir/fp_add_32_logic.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
add_files [list {ipcore_dir/fp_add_32_logic.ngc}]
set hdlfile [add_files [list {ipcore_dir/float2fixed.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
add_files [list {ipcore_dir/float2fixed.ngc}]
set hdlfile [add_files [list {ipcore_dir/fix_to_float_K.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
add_files [list {ipcore_dir/fix_to_float_K.ngc}]
set hdlfile [add_files [list {ipcore_dir/fix2float.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
add_files [list {ipcore_dir/fix2float.ngc}]
set hdlfile [add_files [list {ipcore_dir/coeff_mult.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
add_files [list {ipcore_dir/coeff_mult.ngc}]
set hdlfile [add_files [list {ipcore_dir/coeff_add.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
add_files [list {ipcore_dir/coeff_add.ngc}]
set hdlfile [add_files [list {i2s_data_interface.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {i2c.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {basics.v}]]
set_property file_type Verilog $hdlfile
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
set hdlfile [add_files [list {squaregen.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {sawgen.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {pmodAD2_ctrl.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {internalCounter.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {iir.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {coefficients.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {clkDivSecondary.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {clkDivMain.vhd}]]
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
set hdlfile [add_files [list {notebank.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {masterControler.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {ipcore_dir/clocking.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {decoder.v}]]
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
