
# PlanAhead Launch Script for Post PAR Floorplanning, created by Project Navigator

create_project -name xillydemo -dir "/afs/ece.cmu.edu/usr/elliotr/Private/18545/break-the-xilence/project/verilog/planAhead_run_1" -part xc7z020clg484-1
set srcset [get_property srcset [current_run -impl]]
set_property design_mode GateLvl $srcset
set_property edif_top_file "/afs/ece.cmu.edu/usr/elliotr/Private/18545/break-the-xilence/project/verilog/xillydemo.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {/afs/ece.cmu.edu/usr/elliotr/Private/18545/break-the-xilence/project/verilog} {../system/implementation} {../cores} {../runonce} }
add_files [list {../system/implementation/system_processing_system7_0_wrapper.ncf}] -fileset [get_property constrset [current_run]]
add_files [list {../system/implementation/system_axi4lite_0_wrapper.ncf}] -fileset [get_property constrset [current_run]]
add_files [list {../system/implementation/system_axi_interconnect_1_wrapper.ncf}] -fileset [get_property constrset [current_run]]
add_files [list {../system/implementation/system_axi_interconnect_0_wrapper.ncf}] -fileset [get_property constrset [current_run]]
set_property target_constrs_file "/afs/ece.cmu.edu/usr/elliotr/Private/18545/break-the-xilence/project/verilog/src/xillydemo.ucf" [current_fileset -constrset]
add_files [list {/afs/ece.cmu.edu/usr/elliotr/Private/18545/break-the-xilence/project/verilog/src/xillydemo.ucf}] -fileset [get_property constrset [current_run]]
link_design
read_xdl -file "/afs/ece.cmu.edu/usr/elliotr/Private/18545/break-the-xilence/project/verilog/xillydemo.ncd"
if {[catch {read_twx -name results_1 -file "/afs/ece.cmu.edu/usr/elliotr/Private/18545/break-the-xilence/project/verilog/xillydemo.twx"} eInfo]} {
   puts "WARNING: there was a problem importing \"/afs/ece.cmu.edu/usr/elliotr/Private/18545/break-the-xilence/project/verilog/xillydemo.twx\": $eInfo"
}
