# Loads a standalone BD and opens GUI for editing

if {$argc != 1} {
    puts "Missing BD name"
}

create_project -in_memory -part xc7z020clg400-1
add_files [lindex $argv 0]
open_bd_design [lindex $argv 0]

puts "Block Design opened successfully. Starting GUI. Make sure to save your changes."

start_gui

