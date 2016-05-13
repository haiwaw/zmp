
 add_fsm_encoding \
       {axi_emc_native_interface.emc_addr_ps} \
       { }  \
       {{000 000} {001 010} {010 001} {011 011} {100 100} {110 101} {111 110} }

 add_fsm_encoding \
       {mem_state_machine.crnt_state} \
       { }  \
       {{0000 0000} {0001 0001} {0010 0010} {0011 0101} {0100 0100} {0101 0011} {0110 0110} {0111 1000} {1000 0111} {1001 1001} {1010 1010} }

 add_fsm_encoding \
       {axi_data_fifo_v2_1_axic_reg_srl_fifo.state} \
       { }  \
       {{00 0100} {01 1000} {10 0001} {11 0010} }
