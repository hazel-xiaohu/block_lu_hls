# XSCT/Vitis 2022.2 standalone application creation.
# Run from the zu15eg_vivado_v1 directory after a GPIO-enabled XSA exists.
set root [file normalize [file dirname [info script]]]
set xsa [file normalize "$root/../output/block_lu_zu15eg_fixed.xsa"]
if {![file exists $xsa]} {
    # 03_build_and_export.tcl normally writes here; allow the alternate path.
    set xsa [file normalize "$root/../output/block_lu_zu15eg.xsa"]
}
if {![file exists $xsa]} { error "No XSA found. Run Vivado implementation/export first." }
set ws [file normalize "$root/workspace"]
file mkdir $ws
setws $ws

platform create -name block_lu_platform -hw $xsa -proc psu_cortexa53_0 -os standalone
domain create -name standalone_domain -proc psu_cortexa53_0 -os standalone
# xilffs is needed by FatFs (PS SD1).
bsp setlib -name xilffs
bsp regenerate
platform generate

app create -name blu_sd_runner -platform block_lu_platform \
    -domain standalone_domain -template {Empty Application(C)}
app config -name blu_sd_runner build-config release
importsources -name blu_sd_runner -path [file normalize "$root/src"]
app build -name blu_sd_runner
puts "Vitis application generated under $ws"
exit
