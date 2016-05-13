# 
# Synthesis run script generated by Vivado
# 

debug::add_scope template.lib 1
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7z100ffg900-2

set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir /home/haifeng/vivado_prj/zmmp_prj/ZMMP_7100_PL2015_2/hardware/embedded_design/embedded_design.cache/wt [current_project]
set_property parent.project_path /home/haifeng/vivado_prj/zmmp_prj/ZMMP_7100_PL2015_2/hardware/embedded_design/embedded_design.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language VHDL [current_project]
add_files /home/haifeng/vivado_prj/zmmp_prj/ZMMP_7100_PL2015_2/hardware/embedded_design/embedded_design.srcs/sources_1/bd/zynq_design_1/zynq_design_1.bd
set_property used_in_implementation false [get_files -all /home/haifeng/vivado_prj/zmmp_prj/ZMMP_7100_PL2015_2/hardware/embedded_design/embedded_design.srcs/sources_1/bd/zynq_design_1/ip/zynq_design_1_processing_system7_1_0/zynq_design_1_processing_system7_1_0.xdc]
set_property used_in_implementation false [get_files -all /home/haifeng/vivado_prj/zmmp_prj/ZMMP_7100_PL2015_2/hardware/embedded_design/embedded_design.srcs/sources_1/bd/zynq_design_1/ip/zynq_design_1_axi_gpio_1_0/zynq_design_1_axi_gpio_1_0_board.xdc]
set_property used_in_implementation false [get_files -all /home/haifeng/vivado_prj/zmmp_prj/ZMMP_7100_PL2015_2/hardware/embedded_design/embedded_design.srcs/sources_1/bd/zynq_design_1/ip/zynq_design_1_axi_gpio_1_0/zynq_design_1_axi_gpio_1_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/haifeng/vivado_prj/zmmp_prj/ZMMP_7100_PL2015_2/hardware/embedded_design/embedded_design.srcs/sources_1/bd/zynq_design_1/ip/zynq_design_1_axi_gpio_1_0/zynq_design_1_axi_gpio_1_0.xdc]
set_property used_in_implementation false [get_files -all /home/haifeng/vivado_prj/zmmp_prj/ZMMP_7100_PL2015_2/hardware/embedded_design/embedded_design.srcs/sources_1/bd/zynq_design_1/ip/zynq_design_1_axi_gpio_2_1/zynq_design_1_axi_gpio_2_1_board.xdc]
set_property used_in_implementation false [get_files -all /home/haifeng/vivado_prj/zmmp_prj/ZMMP_7100_PL2015_2/hardware/embedded_design/embedded_design.srcs/sources_1/bd/zynq_design_1/ip/zynq_design_1_axi_gpio_2_1/zynq_design_1_axi_gpio_2_1_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/haifeng/vivado_prj/zmmp_prj/ZMMP_7100_PL2015_2/hardware/embedded_design/embedded_design.srcs/sources_1/bd/zynq_design_1/ip/zynq_design_1_axi_gpio_2_1/zynq_design_1_axi_gpio_2_1.xdc]
set_property used_in_implementation false [get_files -all /home/haifeng/vivado_prj/zmmp_prj/ZMMP_7100_PL2015_2/hardware/embedded_design/embedded_design.srcs/sources_1/bd/zynq_design_1/ip/zynq_design_1_axi_gpio_3_2/zynq_design_1_axi_gpio_3_2_board.xdc]
set_property used_in_implementation false [get_files -all /home/haifeng/vivado_prj/zmmp_prj/ZMMP_7100_PL2015_2/hardware/embedded_design/embedded_design.srcs/sources_1/bd/zynq_design_1/ip/zynq_design_1_axi_gpio_3_2/zynq_design_1_axi_gpio_3_2_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/haifeng/vivado_prj/zmmp_prj/ZMMP_7100_PL2015_2/hardware/embedded_design/embedded_design.srcs/sources_1/bd/zynq_design_1/ip/zynq_design_1_axi_gpio_3_2/zynq_design_1_axi_gpio_3_2.xdc]
set_property used_in_implementation false [get_files -all /home/haifeng/vivado_prj/zmmp_prj/ZMMP_7100_PL2015_2/hardware/embedded_design/embedded_design.srcs/sources_1/bd/zynq_design_1/ip/zynq_design_1_proc_sys_reset_0/zynq_design_1_proc_sys_reset_0_board.xdc]
set_property used_in_implementation false [get_files -all /home/haifeng/vivado_prj/zmmp_prj/ZMMP_7100_PL2015_2/hardware/embedded_design/embedded_design.srcs/sources_1/bd/zynq_design_1/ip/zynq_design_1_proc_sys_reset_0/zynq_design_1_proc_sys_reset_0.xdc]
set_property used_in_implementation false [get_files -all /home/haifeng/vivado_prj/zmmp_prj/ZMMP_7100_PL2015_2/hardware/embedded_design/embedded_design.srcs/sources_1/bd/zynq_design_1/ip/zynq_design_1_proc_sys_reset_0/zynq_design_1_proc_sys_reset_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/haifeng/vivado_prj/zmmp_prj/ZMMP_7100_PL2015_2/hardware/embedded_design/embedded_design.srcs/sources_1/bd/zynq_design_1/ip/zynq_design_1_axi_emc_1_0/zynq_design_1_axi_emc_1_0_board.xdc]
set_property used_in_implementation false [get_files -all /home/haifeng/vivado_prj/zmmp_prj/ZMMP_7100_PL2015_2/hardware/embedded_design/embedded_design.srcs/sources_1/bd/zynq_design_1/ip/zynq_design_1_axi_emc_1_0/zynq_design_1_axi_emc_1_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/haifeng/vivado_prj/zmmp_prj/ZMMP_7100_PL2015_2/hardware/embedded_design/embedded_design.srcs/sources_1/bd/zynq_design_1/ip/zynq_design_1_xbar_0/zynq_design_1_xbar_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/haifeng/vivado_prj/zmmp_prj/ZMMP_7100_PL2015_2/hardware/embedded_design/embedded_design.srcs/sources_1/bd/zynq_design_1/ip/zynq_design_1_auto_pc_0/zynq_design_1_auto_pc_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/haifeng/vivado_prj/zmmp_prj/ZMMP_7100_PL2015_2/hardware/embedded_design/embedded_design.srcs/sources_1/bd/zynq_design_1/ip/zynq_design_1_auto_pc_1/zynq_design_1_auto_pc_1_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/haifeng/vivado_prj/zmmp_prj/ZMMP_7100_PL2015_2/hardware/embedded_design/embedded_design.srcs/sources_1/bd/zynq_design_1/ip/zynq_design_1_auto_pc_2/zynq_design_1_auto_pc_2_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/haifeng/vivado_prj/zmmp_prj/ZMMP_7100_PL2015_2/hardware/embedded_design/embedded_design.srcs/sources_1/bd/zynq_design_1/ip/zynq_design_1_auto_pc_3/zynq_design_1_auto_pc_3_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/haifeng/vivado_prj/zmmp_prj/ZMMP_7100_PL2015_2/hardware/embedded_design/embedded_design.srcs/sources_1/bd/zynq_design_1/zynq_design_1_ooc.xdc]
set_property is_locked true [get_files /home/haifeng/vivado_prj/zmmp_prj/ZMMP_7100_PL2015_2/hardware/embedded_design/embedded_design.srcs/sources_1/bd/zynq_design_1/zynq_design_1.bd]

read_vhdl -library xil_defaultlib /home/haifeng/vivado_prj/zmmp_prj/ZMMP_7100_PL2015_2/hardware/embedded_design/embedded_design.srcs/sources_1/imports/hdl/zynq_design_1_wrapper.vhd
read_xdc /home/haifeng/vivado_prj/zmmp_prj/ZMMP_7100_PL2015_2/hardware/embedded_design/embedded_design.srcs/constrs_1/imports/system.xdc
set_property used_in_implementation false [get_files /home/haifeng/vivado_prj/zmmp_prj/ZMMP_7100_PL2015_2/hardware/embedded_design/embedded_design.srcs/constrs_1/imports/system.xdc]

read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]
synth_design -top zynq_design_1_wrapper -part xc7z100ffg900-2
write_checkpoint -noxdef zynq_design_1_wrapper.dcp
catch { report_utilization -file zynq_design_1_wrapper_utilization_synth.rpt -pb zynq_design_1_wrapper_utilization_synth.pb }
