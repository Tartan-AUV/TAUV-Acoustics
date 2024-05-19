# Set device & top module
set part_num xc7z020clg400-1

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
set project_sources_v [glob -nocomplain -directory "src" *.v]
set project_sources_sv [glob -directory "src" *.sv]
set library_sources_v [glob -nocomplain -directory "../../library" "*.v"]
set library_sources_sv [glob -nocomplain -directory "../../library" "*.sv"]

set project_constraints [glob -directory "constraints" "*.xdc"]

# puts "Project Sources: $project_sources_v"
# puts "Library Sources: $library_sources_v"
# puts "Project Constraints: $project_constraints"

set sources_v [concat $library_sources_v $project_sources_v]
if {[llength $sources_v] != 0} {
    read_verilog sources_v
}

read_verilog -sv [concat $library_sources_sv $project_sources_sv]

read_xdc $project_constraints
add_files C:/Dev/TAUV-Acoustics/hdl/configurations/dummy/dummy.srcs/sources_1/bd/top/top.bd
generate_target all [get_files  C:/Dev/TAUV-Acoustics/hdl/configurations/dummy/dummy.srcs/sources_1/bd/top/top.bd]

# Run synthesis
# synth_design -top "Top" -part $part_num
# write_checkpoint -force $output_dir/post_synth.dcp
# report_timing_summary -file $reports_dir/post_synth_timing_summary.rpt
# report_utilization -file $reports_dir/post_synth_utilization.rpt
