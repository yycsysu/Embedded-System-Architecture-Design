
# PlanAhead Launch Script for Post PAR Floorplanning, created by Project Navigator

create_project -name myCpu -dir "/home/wu/ise12.3/lab6/myCpu/planAhead_run_3" -part xc6slx16csg324-3
set srcset [get_property srcset [current_run -impl]]
set_property design_mode GateLvl $srcset
set_property edif_top_file "/home/wu/ise12.3/lab6/myCpu/pcpu.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {/home/wu/ise12.3/lab6/myCpu} }
set_param project.paUcfFile  "pcpu.ucf"
add_files "pcpu.ucf" -fileset [get_property constrset [current_run]]
open_netlist_design
read_xdl -file "/home/wu/ise12.3/lab6/myCpu/pcpu.ncd"
if {[catch {read_twx -name results_1 -file "/home/wu/ise12.3/lab6/myCpu/pcpu.twx"} eInfo]} {
   puts "WARNING: there was a problem importing \"/home/wu/ise12.3/lab6/myCpu/pcpu.twx\": $eInfo"
}
