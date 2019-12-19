transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {D:/VHDL/fsk/fsk.vhd}
vcom -93 -work work {D:/VHDL/fsk/div.vhd}
vcom -93 -work work {D:/VHDL/fsk/div_4.vhd}
vcom -93 -work work {D:/VHDL/fsk/sel.vhd}

vcom -93 -work work {D:/VHDL/fsk/simulation/modelsim/fsk.vht}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneive -L rtl_work -L work -voptargs="+acc"  fsk_vhd_tst

add wave *
view structure
view signals
run -all
