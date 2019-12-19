transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {D:/VHDL/task4_serial_scan/task4_serial_scan.vhd}

vcom -93 -work work {D:/VHDL/task4_serial_scan/simulation/modelsim/task4_serial_scan.vht}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneive -L rtl_work -L work -voptargs="+acc"  task4_serial_scan_vhd_tst

add wave *
view structure
view signals
run -all
