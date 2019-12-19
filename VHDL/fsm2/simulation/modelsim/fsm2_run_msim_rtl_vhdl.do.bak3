transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {D:/VHDL/fsm2/fsm2.vhd}

vcom -93 -work work {D:/VHDL/fsm2/simulation/modelsim/fsm2.vht}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneive -L rtl_work -L work -voptargs="+acc"  fsm2_vhd_tst

add wave *
view structure
view signals
run -all
