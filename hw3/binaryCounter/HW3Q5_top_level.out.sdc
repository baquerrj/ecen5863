## Generated SDC file "HW3Q5_top_level.out.sdc"

## Copyright (C) 2016  Intel Corporation. All rights reserved.
## Your use of Intel Corporation's design tools, logic functions 
## and other software and tools, and its AMPP partner logic 
## functions, and any output files from any of the foregoing 
## (including device programming or simulation files), and any 
## associated documentation or information are expressly subject 
## to the terms and conditions of the Intel Program License 
## Subscription Agreement, the Intel Quartus Prime License Agreement,
## the Intel MegaCore Function License Agreement, or other 
## applicable license agreement, including, without limitation, 
## that your use is for the sole purpose of programming logic 
## devices manufactured by Intel and sold by Intel or its 
## authorized distributors.  Please refer to the applicable 
## agreement for further details.


## VENDOR  "Altera"
## PROGRAM "Quartus Prime"
## VERSION "Version 16.1.0 Build 196 10/24/2016 SJ Lite Edition"

## DATE    "Sat Oct 26 14:09:13 2019"

##
## DEVICE  "10M50DAF484C6GES"
##


#**************************************************************
# Time Information
#**************************************************************

set_time_format -unit ns -decimal_places 3



#**************************************************************
# Create Clock
#**************************************************************

create_clock -name {CP} -period 20.000 -waveform { 0.000 5.000 } [get_ports { CP }]


#**************************************************************
# Create Generated Clock
#**************************************************************



#**************************************************************
# Set Clock Latency
#**************************************************************



#**************************************************************
# Set Clock Uncertainty
#**************************************************************

set_clock_uncertainty -rise_from [get_clocks {CP}] -rise_to [get_clocks {CP}]  0.020  
set_clock_uncertainty -rise_from [get_clocks {CP}] -fall_to [get_clocks {CP}]  0.020  
set_clock_uncertainty -fall_from [get_clocks {CP}] -rise_to [get_clocks {CP}]  0.020  
set_clock_uncertainty -fall_from [get_clocks {CP}] -fall_to [get_clocks {CP}]  0.020  


#**************************************************************
# Set Input Delay
#**************************************************************

set_input_delay -add_delay  -clock [get_clocks {CP}]  1.000 [get_ports {CEP}]
set_input_delay -add_delay  -clock [get_clocks {CP}]  1.000 [get_ports {CET}]
set_input_delay -add_delay  -clock [get_clocks {CP}]  1.000 [get_ports {CP}]
set_input_delay -add_delay  -clock [get_clocks {CP}]  1.000 [get_ports {PE}]
set_input_delay -add_delay  -clock [get_clocks {CP}]  1.000 [get_ports {P[0]}]
set_input_delay -add_delay  -clock [get_clocks {CP}]  1.000 [get_ports {P[1]}]
set_input_delay -add_delay  -clock [get_clocks {CP}]  1.000 [get_ports {P[2]}]
set_input_delay -add_delay  -clock [get_clocks {CP}]  1.000 [get_ports {P[3]}]
set_input_delay -add_delay  -clock [get_clocks {CP}]  1.000 [get_ports {SR}]


#**************************************************************
# Set Output Delay
#**************************************************************

set_output_delay -add_delay  -clock [get_clocks {CP}]  1.000 [get_ports {Q[0]}]
set_output_delay -add_delay  -clock [get_clocks {CP}]  1.000 [get_ports {Q[1]}]
set_output_delay -add_delay  -clock [get_clocks {CP}]  1.000 [get_ports {Q[2]}]
set_output_delay -add_delay  -clock [get_clocks {CP}]  1.000 [get_ports {Q[3]}]
set_output_delay -add_delay  -clock [get_clocks {CP}]  2.000 [get_ports {TC}]


#**************************************************************
# Set Clock Groups
#**************************************************************



#**************************************************************
# Set False Path
#**************************************************************



#**************************************************************
# Set Multicycle Path
#**************************************************************



#**************************************************************
# Set Maximum Delay
#**************************************************************



#**************************************************************
# Set Minimum Delay
#**************************************************************



#**************************************************************
# Set Input Transition
#**************************************************************

