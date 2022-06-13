
call C:/Xilinx/Vivado/2017.2/bin/xelab xil_defaultlib.apatb_leds_top -prj leds.prj -L axi_protocol_checker_v1_1_12 -L axi_protocol_checker_v1_1_13 -L axis_protocol_checker_v1_1_11 -L axis_protocol_checker_v1_1_12 --initfile "C:/Xilinx/Vivado/2017.2/data/xsim/ip/xsim_ip.ini" --lib "ieee_proposed=./ieee_proposed" -s leds -debug wave
call C:/Xilinx/Vivado/2017.2/bin/xsim --noieeewarnings leds -tclbatch leds.tcl

