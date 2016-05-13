proc start_step { step } {
  set stopFile ".stop.rst"
  if {[file isfile .stop.rst]} {
    puts ""
    puts "*** Halting run - EA reset detected ***"
    puts ""
    puts ""
    return -code error
  }
  set beginFile ".$step.begin.rst"
  set platform "$::tcl_platform(platform)"
  set user "$::tcl_platform(user)"
  set pid [pid]
  set host ""
  if { [string equal $platform unix] } {
    if { [info exist ::env(HOSTNAME)] } {
      set host $::env(HOSTNAME)
    }
  } else {
    if { [info exist ::env(COMPUTERNAME)] } {
      set host $::env(COMPUTERNAME)
    }
  }
  set ch [open $beginFile w]
  puts $ch "<?xml version=\"1.0\"?>"
  puts $ch "<ProcessHandle Version=\"1\" Minor=\"0\">"
  puts $ch "    <Process Command=\".planAhead.\" Owner=\"$user\" Host=\"$host\" Pid=\"$pid\">"
  puts $ch "    </Process>"
  puts $ch "</ProcessHandle>"
  close $ch
}

proc end_step { step } {
  set endFile ".$step.end.rst"
  set ch [open $endFile w]
  close $ch
}

proc step_failed { step } {
  set endFile ".$step.error.rst"
  set ch [open $endFile w]
  close $ch
}

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000

start_step init_design
set rc [catch {
  create_msg_db init_design.pb
  debug::add_scope template.lib 1
  set_property design_mode GateLvl [current_fileset]
  set_property webtalk.parent_dir /home/haifeng/vivado_prj/zmmp_prj/ZMMP_7100_PL2015_2/hardware/embedded_design/embedded_design.cache/wt [current_project]
  set_property parent.project_path /home/haifeng/vivado_prj/zmmp_prj/ZMMP_7100_PL2015_2/hardware/embedded_design/embedded_design.xpr [current_project]
  set_property ip_repo_paths /home/haifeng/vivado_prj/zmmp_prj/ZMMP_7100_PL2015_2/hardware/embedded_design/embedded_design.cache/ip [current_project]
  set_property ip_output_repo /home/haifeng/vivado_prj/zmmp_prj/ZMMP_7100_PL2015_2/hardware/embedded_design/embedded_design.cache/ip [current_project]
  add_files -quiet /home/haifeng/vivado_prj/zmmp_prj/ZMMP_7100_PL2015_2/hardware/embedded_design/embedded_design.runs/synth_1/zynq_design_1_wrapper.dcp
  read_xdc -ref zynq_design_1_processing_system7_1_0 -cells inst /home/haifeng/vivado_prj/zmmp_prj/ZMMP_7100_PL2015_2/hardware/embedded_design/embedded_design.srcs/sources_1/bd/zynq_design_1/ip/zynq_design_1_processing_system7_1_0/zynq_design_1_processing_system7_1_0.xdc
  set_property processing_order EARLY [get_files /home/haifeng/vivado_prj/zmmp_prj/ZMMP_7100_PL2015_2/hardware/embedded_design/embedded_design.srcs/sources_1/bd/zynq_design_1/ip/zynq_design_1_processing_system7_1_0/zynq_design_1_processing_system7_1_0.xdc]
  read_xdc -prop_thru_buffers -ref zynq_design_1_axi_gpio_1_0 -cells U0 /home/haifeng/vivado_prj/zmmp_prj/ZMMP_7100_PL2015_2/hardware/embedded_design/embedded_design.srcs/sources_1/bd/zynq_design_1/ip/zynq_design_1_axi_gpio_1_0/zynq_design_1_axi_gpio_1_0_board.xdc
  set_property processing_order EARLY [get_files /home/haifeng/vivado_prj/zmmp_prj/ZMMP_7100_PL2015_2/hardware/embedded_design/embedded_design.srcs/sources_1/bd/zynq_design_1/ip/zynq_design_1_axi_gpio_1_0/zynq_design_1_axi_gpio_1_0_board.xdc]
  read_xdc -ref zynq_design_1_axi_gpio_1_0 -cells U0 /home/haifeng/vivado_prj/zmmp_prj/ZMMP_7100_PL2015_2/hardware/embedded_design/embedded_design.srcs/sources_1/bd/zynq_design_1/ip/zynq_design_1_axi_gpio_1_0/zynq_design_1_axi_gpio_1_0.xdc
  set_property processing_order EARLY [get_files /home/haifeng/vivado_prj/zmmp_prj/ZMMP_7100_PL2015_2/hardware/embedded_design/embedded_design.srcs/sources_1/bd/zynq_design_1/ip/zynq_design_1_axi_gpio_1_0/zynq_design_1_axi_gpio_1_0.xdc]
  read_xdc -prop_thru_buffers -ref zynq_design_1_axi_gpio_2_1 -cells U0 /home/haifeng/vivado_prj/zmmp_prj/ZMMP_7100_PL2015_2/hardware/embedded_design/embedded_design.srcs/sources_1/bd/zynq_design_1/ip/zynq_design_1_axi_gpio_2_1/zynq_design_1_axi_gpio_2_1_board.xdc
  set_property processing_order EARLY [get_files /home/haifeng/vivado_prj/zmmp_prj/ZMMP_7100_PL2015_2/hardware/embedded_design/embedded_design.srcs/sources_1/bd/zynq_design_1/ip/zynq_design_1_axi_gpio_2_1/zynq_design_1_axi_gpio_2_1_board.xdc]
  read_xdc -ref zynq_design_1_axi_gpio_2_1 -cells U0 /home/haifeng/vivado_prj/zmmp_prj/ZMMP_7100_PL2015_2/hardware/embedded_design/embedded_design.srcs/sources_1/bd/zynq_design_1/ip/zynq_design_1_axi_gpio_2_1/zynq_design_1_axi_gpio_2_1.xdc
  set_property processing_order EARLY [get_files /home/haifeng/vivado_prj/zmmp_prj/ZMMP_7100_PL2015_2/hardware/embedded_design/embedded_design.srcs/sources_1/bd/zynq_design_1/ip/zynq_design_1_axi_gpio_2_1/zynq_design_1_axi_gpio_2_1.xdc]
  read_xdc -prop_thru_buffers -ref zynq_design_1_axi_gpio_3_2 -cells U0 /home/haifeng/vivado_prj/zmmp_prj/ZMMP_7100_PL2015_2/hardware/embedded_design/embedded_design.srcs/sources_1/bd/zynq_design_1/ip/zynq_design_1_axi_gpio_3_2/zynq_design_1_axi_gpio_3_2_board.xdc
  set_property processing_order EARLY [get_files /home/haifeng/vivado_prj/zmmp_prj/ZMMP_7100_PL2015_2/hardware/embedded_design/embedded_design.srcs/sources_1/bd/zynq_design_1/ip/zynq_design_1_axi_gpio_3_2/zynq_design_1_axi_gpio_3_2_board.xdc]
  read_xdc -ref zynq_design_1_axi_gpio_3_2 -cells U0 /home/haifeng/vivado_prj/zmmp_prj/ZMMP_7100_PL2015_2/hardware/embedded_design/embedded_design.srcs/sources_1/bd/zynq_design_1/ip/zynq_design_1_axi_gpio_3_2/zynq_design_1_axi_gpio_3_2.xdc
  set_property processing_order EARLY [get_files /home/haifeng/vivado_prj/zmmp_prj/ZMMP_7100_PL2015_2/hardware/embedded_design/embedded_design.srcs/sources_1/bd/zynq_design_1/ip/zynq_design_1_axi_gpio_3_2/zynq_design_1_axi_gpio_3_2.xdc]
  read_xdc -prop_thru_buffers -ref zynq_design_1_proc_sys_reset_0 /home/haifeng/vivado_prj/zmmp_prj/ZMMP_7100_PL2015_2/hardware/embedded_design/embedded_design.srcs/sources_1/bd/zynq_design_1/ip/zynq_design_1_proc_sys_reset_0/zynq_design_1_proc_sys_reset_0_board.xdc
  set_property processing_order EARLY [get_files /home/haifeng/vivado_prj/zmmp_prj/ZMMP_7100_PL2015_2/hardware/embedded_design/embedded_design.srcs/sources_1/bd/zynq_design_1/ip/zynq_design_1_proc_sys_reset_0/zynq_design_1_proc_sys_reset_0_board.xdc]
  read_xdc -ref zynq_design_1_proc_sys_reset_0 /home/haifeng/vivado_prj/zmmp_prj/ZMMP_7100_PL2015_2/hardware/embedded_design/embedded_design.srcs/sources_1/bd/zynq_design_1/ip/zynq_design_1_proc_sys_reset_0/zynq_design_1_proc_sys_reset_0.xdc
  set_property processing_order EARLY [get_files /home/haifeng/vivado_prj/zmmp_prj/ZMMP_7100_PL2015_2/hardware/embedded_design/embedded_design.srcs/sources_1/bd/zynq_design_1/ip/zynq_design_1_proc_sys_reset_0/zynq_design_1_proc_sys_reset_0.xdc]
  read_xdc -prop_thru_buffers -ref zynq_design_1_axi_emc_1_0 /home/haifeng/vivado_prj/zmmp_prj/ZMMP_7100_PL2015_2/hardware/embedded_design/embedded_design.srcs/sources_1/bd/zynq_design_1/ip/zynq_design_1_axi_emc_1_0/zynq_design_1_axi_emc_1_0_board.xdc
  set_property processing_order EARLY [get_files /home/haifeng/vivado_prj/zmmp_prj/ZMMP_7100_PL2015_2/hardware/embedded_design/embedded_design.srcs/sources_1/bd/zynq_design_1/ip/zynq_design_1_axi_emc_1_0/zynq_design_1_axi_emc_1_0_board.xdc]
  read_xdc /home/haifeng/vivado_prj/zmmp_prj/ZMMP_7100_PL2015_2/hardware/embedded_design/embedded_design.srcs/constrs_1/imports/system.xdc
  link_design -top zynq_design_1_wrapper -part xc7z100ffg900-2
  close_msg_db -file init_design.pb
} RESULT]
if {$rc} {
  step_failed init_design
  return -code error $RESULT
} else {
  end_step init_design
}

start_step opt_design
set rc [catch {
  create_msg_db opt_design.pb
  catch {write_debug_probes -quiet -force debug_nets}
  opt_design 
  write_checkpoint -force zynq_design_1_wrapper_opt.dcp
  catch {report_drc -file zynq_design_1_wrapper_drc_opted.rpt}
  close_msg_db -file opt_design.pb
} RESULT]
if {$rc} {
  step_failed opt_design
  return -code error $RESULT
} else {
  end_step opt_design
}

start_step place_design
set rc [catch {
  create_msg_db place_design.pb
  catch {write_hwdef -file zynq_design_1_wrapper.hwdef}
  place_design 
  write_checkpoint -force zynq_design_1_wrapper_placed.dcp
  catch { report_io -file zynq_design_1_wrapper_io_placed.rpt }
  catch { report_utilization -file zynq_design_1_wrapper_utilization_placed.rpt -pb zynq_design_1_wrapper_utilization_placed.pb }
  catch { report_control_sets -verbose -file zynq_design_1_wrapper_control_sets_placed.rpt }
  close_msg_db -file place_design.pb
} RESULT]
if {$rc} {
  step_failed place_design
  return -code error $RESULT
} else {
  end_step place_design
}

start_step route_design
set rc [catch {
  create_msg_db route_design.pb
  route_design 
  write_checkpoint -force zynq_design_1_wrapper_routed.dcp
  catch { report_drc -file zynq_design_1_wrapper_drc_routed.rpt -pb zynq_design_1_wrapper_drc_routed.pb }
  catch { report_timing_summary -warn_on_violation -max_paths 10 -file zynq_design_1_wrapper_timing_summary_routed.rpt -rpx zynq_design_1_wrapper_timing_summary_routed.rpx }
  catch { report_power -file zynq_design_1_wrapper_power_routed.rpt -pb zynq_design_1_wrapper_power_summary_routed.pb }
  catch { report_route_status -file zynq_design_1_wrapper_route_status.rpt -pb zynq_design_1_wrapper_route_status.pb }
  catch { report_clock_utilization -file zynq_design_1_wrapper_clock_utilization_routed.rpt }
  close_msg_db -file route_design.pb
} RESULT]
if {$rc} {
  step_failed route_design
  return -code error $RESULT
} else {
  end_step route_design
}

