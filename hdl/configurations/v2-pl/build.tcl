# Set device & top module
create_project -in_memory -part xc7z020clg400-1 -dir "/home/gleb/develop/TAUV-Acoustics/hdl/configurations/v2-pl/"

# Initialize output directories
set output_dir ./output
set reports_dir ./reports

file mkdir $output_dir
file mkdir $reports_dir

set files [glob -nocomplain "$output_dir/*"]
if {[llength $files] != 0} {
    # clear folder contents
    puts "deleting contents of $output_dir"
    file delete -force {*}[glob -directory $output_dir *]; 
} else {
    puts "$output_dir is empty"
}

set files [glob -nocomplain "$output_dir/*"]
if {[llength $files] != 0} {
    # clear folder contents
    puts "deleting contents of $output_dir"
    file delete -force {*}[glob -directory $output_dir *]; 
} else {
    puts "$output_dir is empty"
}

# Reference HDL and constraint sources
set project_sources_v [glob -nocomplain -directory "./src" *.v]
set project_sources_sv [glob -nocomplain -directory "./src" *.sv]
set library_sources_v [glob -nocomplain -directory "../../library" "*.v"]
set library_sources_sv [glob -nocomplain -directory "../../library" "*.sv"]

set project_constraints [glob -directory "constraints" "*.xdc"]

# puts "Project Sources: $project_sources_v"
# puts "Library Sources: $library_sources_v"
# puts "Project Constraints: $project_constraints"

set sources_v [concat $library_sources_v $project_sources_v]
read_verilog $sources_v

set sources_sv [concat $library_sources_sv $project_sources_sv]
if {[llength $sources_sv] != 0} {
    read_verilog -sv $sources_sv
}

read_xdc $project_constraints

# Read platform-specific block design
read_bd "../../platforms/myc-y7z020v2/top.bd"
open_bd "../../platforms/myc-y7z020v2/top.bd"

# Add PL configuration
set_property source_mgmt_mode All [current_project]
update_compile_order -fileset sources_1
create_bd_cell -type module -reference top_pl top_pl_0

# Add PL-PS buses

# Make disconnected ports external
make_bd_pins_external [get_bd_cells top_pl_0]

make_wrapper -top [get_files "top.bd"]
read_verilog [get_files "top.v"]

# read_verilog 

# Run synthesis
synth_design -top "top" -part xc7z020clg400
write_checkpoint -force $output_dir/post_synth.dcp
report_timing_summary -file $reports_dir/post_synth_timing_summary.rpt
report_utilization -file $reports_dir/post_synth_utilization.rpt
