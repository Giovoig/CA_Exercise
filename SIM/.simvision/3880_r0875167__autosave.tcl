
# NC-Sim Command File
# TOOL:	ncsim(64)	15.20-s058
#

set tcl_prompt1 {puts -nonewline "ncsim> "}
set tcl_prompt2 {puts -nonewline "> "}
set vlog_format %h
set vhdl_format %v
set real_precision 6
set display_unit auto
set time_unit module
set heap_garbage_size -200
set heap_garbage_time 0
set assert_report_level note
set assert_stop_level error
set autoscope yes
set assert_1164_warnings yes
set pack_assert_off {}
set severity_pack_assert_off {note warning}
set assert_output_stop_level failed
set tcl_debug_level 0
set relax_path_name 1
set vhdl_vcdmap XX01ZX01X
set intovf_severity_level ERROR
set probe_screen_format 0
set rangecnst_severity_level ERROR
set textio_severity_level ERROR
set vital_timing_checks_on 1
set vlog_code_show_force 0
set assert_count_attempts 1
set tcl_all64 false
set tcl_runerror_exit false
set assert_report_incompletes 0
set show_force 1
set force_reset_by_reinvoke 0
set tcl_relaxed_literal 0
set probe_exclude_patterns {}
set probe_packed_limit 4k
set probe_unpacked_limit 16k
set assert_internal_msg no
set svseed 1
set assert_reporting_mode 0
alias . run
alias iprof profile
alias quit exit
database -open -vcd -into vcd_dump.vcd _vcd_dump.vcd1 -timescale fs
database -open -evcd -into vcd_dump.vcd _vcd_dump.vcd -timescale fs
database -open -shm -into waves.shm waves -default
probe -create -database waves cpu_tb.addr_ext cpu_tb.addr_ext_2 cpu_tb.data_mem cpu_tb.counter cpu_tb.dmem_cnt cpu_tb.half_clock_period_ns cpu_tb.imem_cnt cpu_tb.instr_mem cpu_tb.rdata_ext cpu_tb.rdata_ext_2 cpu_tb.ref_reg cpu_tb.ref_str cpu_tb.wdata_ext cpu_tb.wdata_ext_2
probe -create -database waves cpu_tb.arst_n cpu_tb.clk
probe -create -database waves cpu_tb.dut.addr_ext cpu_tb.dut.addr_ext_2 cpu_tb.dut.alu_control cpu_tb.dut.alu_op cpu_tb.dut.alu_operand_2 cpu_tb.dut.alu_out cpu_tb.dut.alu_src cpu_tb.dut.arst_n cpu_tb.dut.branch cpu_tb.dut.branch_pc cpu_tb.dut.clk cpu_tb.dut.current_pc cpu_tb.dut.enable cpu_tb.dut.immediate_extended cpu_tb.dut.instruction cpu_tb.dut.jump cpu_tb.dut.jump_pc cpu_tb.dut.mem_2_reg cpu_tb.dut.mem_data cpu_tb.dut.mem_read cpu_tb.dut.mem_write cpu_tb.dut.rdata_ext cpu_tb.dut.rdata_ext_2 cpu_tb.dut.reg_dst cpu_tb.dut.reg_write cpu_tb.dut.regfile_rdata_1 cpu_tb.dut.regfile_rdata_2 cpu_tb.dut.regfile_waddr cpu_tb.dut.regfile_wdata cpu_tb.dut.ren_ext cpu_tb.dut.ren_ext_2 cpu_tb.dut.updated_pc cpu_tb.dut.wdata_ext cpu_tb.dut.wdata_ext_2 cpu_tb.dut.wen_ext cpu_tb.dut.wen_ext_2 cpu_tb.dut.zero_flag

simvision -input /users/students/r0875167/CA/CA_Exercise/SIM/.simvision/3880_r0875167__autosave.tcl.svcf